from jinja2 import Environment, FileSystemLoader, select_autoescape
from scraper import get_content_from_each_class_page, get_defines



classes = get_content_from_each_class_page("https://lua-api.factorio.com/latest/classes.html")
defines = get_defines("https://lua-api.factorio.com/latest/defines.html")

env = Environment(
        loader = FileSystemLoader("."),
        autoescape = select_autoescape(),
        lstrip_blocks=True,
        trim_blocks=True
        )

template = env.get_template("stubs_template.lua")

with open("stubs.lua", "w") as f:
    f.writelines(template.render(classes=classes,defines=defines))

