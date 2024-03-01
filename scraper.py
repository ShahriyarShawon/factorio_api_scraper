from dataclasses import dataclass

from bs4 import BeautifulSoup
import requests


@dataclass
class Parameter():
    name: str
    types: list[str]
    desc: str


@dataclass
class Method():
    name: str
    desc: str
    params: list[Parameter]
    takes_table: bool


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
        filtered_param_rows = [row for row in parameters_rows if row.get('class', []) == []]
        scraped_parameters = scrape_parameters(filtered_param_rows)
    except AttributeError:
        scraped_parameters = []

    method = Method(method_name, method_description, scraped_parameters, takes_table)
    return method


def scrape_methods(soup) -> list[Method]:
    methods = soup.find_all("div", recursive=False)
    scraped_methods = [scrape_singular_method(method) for method in methods]
    return scraped_methods


def scrape_attributes(soup):
    attributes_container = soup.find("div", recursive=False)
    for attr in attributes_container:
        attr_name = ""
        attr_type = ""
        attr_permissions = ""
        attr_desc = ""

    breakpoint()
    pass

def scrape_singular_class(class_selection: tuple[str, str]):
    print(f"Scraping class {class_selection[0]}")
    url = f"https://lua-api.factorio.com/latest/{class_selection[1]}"
    req = requests.get(url)
    soup = BeautifulSoup(req.content, 'html.parser')
    methods_section = soup.find("h2", string="Methods").find_next_sibling()
    attributes_section = soup.find("h2", string="Attributes").find_next_sibling()

    methods = scrape_methods(methods_section)
    attributes = scrape_attributes(attributes_section)

    pass

def get_classes(url: str):
    req = requests.get(url)
    soup = BeautifulSoup(req.content, 'html.parser')
    class_list_container = soup.find("ul", id="list-class_").find_all("a")
    class_to_url = [(c.text, c.get("href")) for c in class_list_container]

    for c in class_to_url[6:]:
        singular_class = scrape_singular_class(c)

    pass

def scrape_classes(url: str):
    classes = get_classes(url)
    return classes

if __name__ == "__main__":
    classes = scrape_classes("https://lua-api.factorio.com/latest/classes.html")
    for c in classes:
        print(c)
