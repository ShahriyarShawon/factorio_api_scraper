import grequests
import os
import time
from dataclasses import asdict, dataclass
import json

from bs4 import BeautifulSoup
import requests

@dataclass
class Parameter:
    name: str
    types: list[str]
    desc: str


@dataclass
class Method:
    name: str
    desc: str
    params: list[Parameter]
    takes_table: bool


@dataclass
class Attribute:
    name: str
    _type: str
    permissions: str
    description: str


@dataclass
class LuaClass():
    name: str
    extends: str
    desc: str
    methods: list[Method]
    attributes: list[Attribute]

@dataclass
class FactorioApi:
    classes: list[LuaClass]


def scrape_parameters(param_rows) -> list[Parameter]:
    params: list[Parameter] = []
    for row in param_rows:
        columns = row.find_all("td")
        param_name = columns[0].text.strip()
        param_type = columns[1].text.strip().replace("::\xa0", "").split(" or ")
        param_desc = columns[2].text.strip()

        params.append(Parameter(param_name, param_type, param_desc))
    return params


def scrape_singular_method(soup) -> Method:
    method_name = soup.find("h3").text.strip().split("(")[0]
    method_description = soup.find("p").text.strip()
    print(f"Scraping Method {method_name}")
    takes_table = False

    if "{" in method_name:
        method_name = method_name.split("{")[0]
        takes_table = True

    try:
        parameters_table = soup.find("h4", string="Parameters").find_next_sibling()
        parameters_rows = parameters_table.find_all("tr")
        filtered_param_rows = [
            row for row in parameters_rows if row.get("class", []) == []
        ]
        scraped_parameters = scrape_parameters(filtered_param_rows)
    except AttributeError:
        scraped_parameters = []

    method = Method(
            method_name, method_description, scraped_parameters, takes_table
        )
    return method


def scrape_methods(soup) -> list[Method]:
    methods = soup.find_all("div", recursive=False)
    scraped_methods = [scrape_singular_method(method) for method in methods]
    return scraped_methods

def clean_attribute_type(attr_type: str) -> str:
    attr_type = attr_type.replace(" or ", "|")
    attr_type = attr_type.replace("?", "|nil")
    attr_type = attr_type.replace("?", "|nil")

    #attr_type = re.sub(r"dictionary\[.*\]", "table", attr_type)

    return attr_type

def scrape_attributes(soup) -> list[Attribute]:
    attributes = []
    attributes_container = soup.find_all("div", recursive=False)
    for attr in attributes_container:
        attr_props_container = attr.find("h3")
        name_args_line = attr_props_container.find("span").text.replace(" ::\xa0", "").strip().split(" ", 1)

        attr_name = name_args_line[0]
        print(f"Scraping Attr: {attr_name}")
        #breakpoint()
        attr_type = clean_attribute_type(name_args_line[1].replace("\xa0", " "))
        attr_permissions = attr_props_container.find("small").text
        try:
            attr_desc = attr.find("div").find("div").find("p").text
        except AttributeError:
            attr_desc = ""

        attributes.append(Attribute(attr_name, attr_type, attr_permissions, attr_desc))

    return attributes


def scrape_singular_class(soup):
    name = soup.find("span", string="Class").find_next_sibling().text
    extends = ""
    if "extends" in name:
        name, extends = name.split(" extends ")

    #breakpoint()
    print(f"Scraping Class: {name}")
    description = soup.find("span", string="Class").find_parent().find_next_sibling().text
    methods_section = soup.find("h2", string="Methods").find_next_sibling()
    attributes_section = soup.find("h2", string="Attributes").find_next_sibling()

    methods = scrape_methods(methods_section)
    attributes = scrape_attributes(attributes_section)

    luaclass = LuaClass(name, extends, description, methods, attributes)
    return luaclass

def get_content_from_each_class_page(url: str, cache: bool = True) -> list[LuaClass]:
    cache_dir_exists = os.path.isdir("cachedir")
    if cache and cache_dir_exists:
        print("Cache true and cache dir exists")
        contents = []
        for path in os.listdir("cachedir"):
            f = open(f"cachedir/{path}", "r")
            contents.append(f.read())
            f.close()
        soups = [BeautifulSoup(content, "html.parser") for content in contents]
    else: 
        print("Cache false or cache dir not exists")
        req = requests.get(url)
        soup = BeautifulSoup(req.content, "html.parser")
        class_list_container = soup.find("ul", id="list-class_").find_all("a")
        urls_to_classes = [f"https://lua-api.factorio.com/latest/{c.get('href')}" for c in class_list_container]
        rs = (grequests.get(u) for u in urls_to_classes)
        responses = grequests.map(rs)
        soups = [BeautifulSoup(res.content, "html.parser") for res in responses]
        if not cache_dir_exists: 
            os.mkdir("cachedir")
            print("created cache dir")
        for soup in soups:
            fname = soup.find("span", string="Class").find_next_sibling().text.strip()
            f = open(f"cachedir/{fname}.html", "w")
            f.write(str(soup))
            f.close

    luaclass = []
    for soup in soups[6:]:
        luaclass.append(scrape_singular_class(soup))

    return luaclass

def merge_nested_dicts(dict1, dict2):
    result = dict1.copy() # Start with dict1's keys and values
    for key, value in dict2.items():
        if key in result:
            if isinstance(result[key], dict) and isinstance(value, dict):
                # If both values are dictionaries, merge them recursively
                result[key] = merge_nested_dicts(result[key], value)
            elif isinstance(result[key], list) and isinstance(value, list):
                # If both values are lists, merge them
                result[key].extend(value)
            else:
                # If the values are not of the same type, use the value from dict2
                result[key] = value
        else:
            # If the key is not in dict1, add it
            result[key] = value
    return result

def get_define_dict(define_path: list[str]):
    d = {}
    if len(define_path) == 1:
        return [define_path[0]]
    else:
        d[define_path[0]] = get_define_dict(define_path[1:])
        return d

def get_defines(url: str):
    req = requests.get(url)
    soup = BeautifulSoup(req.content, "html.parser")
    defines_container = soup.find_all("h2", string="Defines")[-1].find_next_sibling()
    defines = [span.text.strip() for span in defines_container.find_all("span", class_="docs-attribute-name")]
    dicts = [get_define_dict(d.split(".")) for d in defines]
    final_dict = {}
    for d in dicts:
        final_dict = merge_nested_dicts(final_dict, d)

    return final_dict["defines"]


if __name__ == "__main__":
    factorio_api = FactorioApi([]) 
    defines = get_defines("https://lua-api.factorio.com/latest/defines.html")
    print(json.dumps(defines))
    # classes = get_content_from_each_class_page("https://lua-api.factorio.com/latest/classes.html")

    # factorio_api.classes = classes
    # with open("factorio_api.json", "w") as f:
    #     dictionary = asdict(factorio_api) 
    #     f.writelines(json.dumps(dictionary, indent=2))

