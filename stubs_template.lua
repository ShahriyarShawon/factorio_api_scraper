---@meta


---@class MyClass
---@field prop1 number 
---@field prop2 number 
---@field prop3 number 
---@field prop4 number 
MyClass = {}
MyClass.__index = MyClass

function MyClass.new(o, prop1, prop2, prop3)
    o = o or {}
    setmetatable(o, MyClass)
    o.prop1 = prop1 or 0
    o.prop2 = prop2 or 0
    o.prop3 = prop3 or 0
    return o
end


{% for class in classes %}
---@class {{class.name}}
{% for attr in class.attributes %}
---@field {{attr.name}} 
{% endfor %}
{{class.name}} = {}
{{class.name}}.__index = {{class.name}}

{% for method in class.methods %}
function {{class.name}}.{{method.name}}() end
{% endfor %}

{% endfor %}
