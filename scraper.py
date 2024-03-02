import grequests
import time
from dataclasses import dataclass

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
    desc: str
    methods: list[Method]
    attributes: list[Attribute]


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


def scrape_attributes(soup) -> list[Attribute]:
    attributes = []
    attributes_container = soup.find_all("div", recursive=False)
    for attr in attributes_container:
        attr_props_container = attr.find("h3")
        name_args_line = attr_props_container.find("span").text.replace(" ::\xa0", "").strip().split(" ")

        attr_name = name_args_line[0]
        print(f"Scraping Attr: {attr_name}")
        attr_type = name_args_line[1].replace("\xa0", " ")
        attr_permissions = attr_props_container.find("small").text
        try:
            attr_desc = attr.find("div").find("div").find("p").text
        except AttributeError:
            attr_desc = ""

        attributes.append(Attribute(attr_name, attr_type, attr_permissions, attr_desc))

    return attributes


def scrape_singular_class(soup: tuple[str, str]):
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

    luaclass = LuaClass(name, description, methods, attributes)
    return luaclass


#def get_classes(url: str) -> list[LuaClass]:
#    req = requests.get(url)
#    soup = BeautifulSoup(req.content, "html.parser")
#    class_list_container = soup.find("ul", id="list-class_").find_all("a")
#    class_to_url = [(c.text, c.get("href")) for c in class_list_container]
#
#    luaclasses = []
#
#    for c in class_to_url[7:]:
#        singular_class = scrape_singular_class(c)
#        luaclasses.append(singular_class)
#
#    return luaclasses

def get_content_from_each_class_page(url: str) -> list[LuaClass]:
    start_time = time.time()

    req = requests.get(url)
    soup = BeautifulSoup(req.content, "html.parser")
    class_list_container = soup.find("ul", id="list-class_").find_all("a")
    urls_to_classes = [f"https://lua-api.factorio.com/latest/{c.get('href')}" for c in class_list_container]
    rs = (grequests.get(u) for u in urls_to_classes)
    responses = grequests.map(rs)
    soups = [BeautifulSoup(res.content, "html.parser") for res in responses]

    end_time = time.time()
    print(f"Got contents of {len(urls_to_classes)} pages in {end_time-start_time} seconds")

    luaclass = []
    for c in soups:
        luaclass.append(scrape_singular_class(c))

    return luaclass

if __name__ == "__main__":
    classes = get_content_from_each_class_page("https://lua-api.factorio.com/latest/classes.html")
    breakpoint()
