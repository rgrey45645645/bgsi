--devbgascension

-- Bytecode (Base64):
-- BgMNBnN0cmluZwZhc3NlcnQMXiVzKiguLSklcyokAiUxBGdzdWIEVHJpbQRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQJRnJhbWV3b3JrAVQAAgUBAQAABgMAAAUBAw/7AwAATQIDQQAAAABSAwAAnwICAEwBAAKkAQIAAAAQQJ8BAAFvAwMAbwQEALwBAMwFAAAAnwEEAoIBAgAGAwEDAgQAABBAAwMDBAMFAAoGARgAAAAAAAAAAAABAAAAAAALAAAAAAUAAAECABOjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNBAASBgAAAE0DBBwHAAAATQIDdQgAAACfAQICwAIJABIAAQCCAgIACgMHBAAAAEADCAMJAwoEAABAQAMLAwwDDQYAAQABAAEYAAIAAAAAAAEAAAAAAAAAAAYABQEAAAAAAR3G7nE0GiL4LwKE5cMpnoJFBiYej0vYmEEeYmGFVKTrWPv5vte3M5A=

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.T)
return function(p3) --[[Function name: Trim, line 10]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v4 = u2.string
    assert(v4(p3))
    return p3:gsub("^%s*(.-)%s*$", "%1")
end