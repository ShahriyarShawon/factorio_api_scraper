---@meta

---@class float 
---@class double 
---@class int 
---@class int8 
---@class uint 
---@class uint8 
---@class uint16 
---@class uint64 
---@class array<T>: {[integer]: T}
---@class dictionary<T>: {[string]: T}


local constants = setmetatable({}, {
	__index = {
		events = setmetatable({}, {
			__index = {
				E = ""
			}
		})
	}
})



{% for class in classes %}
---@class {{class.name}}
{% for attr in class.attributes %}
---@field {{attr.name}} {{attr._type}}
{% endfor %}
{{class.name}} = {}
{{class.name}}.__index = {{class.name}}

{% for method in class.methods %}
function {{class.name}}.{{method.name}}() end
{% endfor %}

{% endfor %}


--- DEFINES 

{% macro render_lua_table(d) %}
    {% for key, value in d.items() %}
{{ key }} = {% if value is mapping %}
setmetatable({}, {
	__index = { 
		{{ render_lua_table(value) }}
	}
})
{% elif value is iterable and value is not string %}
setmetatable({}, { 
	__index = { 
		{% for item in value %}
		{{ item }} = "{{item}}"{% if not loop.last %}, 
		{% endif %}
		{% endfor %} 
	}
})

{% else %}
		{{ value|stringformat('%r') }}
{% endif %}{% if not loop.last %}, {% endif %}
    {% endfor %}
{% endmacro %}


local defines = setmetatable({}, {
	__index = { 
		{{ render_lua_table(defines) }} 
	}
})

---@type LuaBootstrap
script = LuaBootstrap{}
