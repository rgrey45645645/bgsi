--devbgascension

-- Bytecode (Base64):
-- BgMTBnR5cGVvZhNSQlhTY3JpcHRDb25uZWN0aW9uCkRpc2Nvbm5lY3QEdHlwZQhmdW5jdGlvbghJbnN0YW5jZQdEZXN0cm95B0NsZWFudXAFY2xlYW4GX2l0ZW1zDHNldG1ldGF0YWJsZQNuZXcFdGFibGUGaW5zZXJ0A0FkZAZyZW1vdmUGUmVtb3ZlBWNsZWFyB19faW5kZXgABgMBAAAAACS7LAADUgIAAKQBAQAAAABAnwECAvABBQACAACAvAEAGgMAAACfAQIBggABALsoAANSAgAApAEFAAAAQECfAQIC8AEEAAYAAIBSAQAAnwEBAYIAAQC7LAADUgIAAKQBAQAAAABAnwECAvABBQAHAACAvAEAUAgAAACfAQIBggABALwBAPEJAAAAnwECAYIAAQAKAwEEAAAAQAMCAwMDBAQAAEBAAwUDBgMHAwgAFAkBGAAAAAAAAAABAAAAAQAAAAAAAAEAAAEAAAAAAAABAAAAAgAAAhUAAAAAAwABAAAADOIBAQD/AgAAAAAAADACAToAAAAA+wIAAJ49AQMCAAAApAADAAAAIECfAAMCggACAAQDCgUBAAMLBAAAIEAAIAwBGAABAAAAAQAA/gAAACEAAAAABQIAAAAADE0DADoAAAAAnjQDBAEAAABSBAEApAIDAAAIEICfAgMBTQMAOgAAAAAcAgMAggICAAQDCgMNAw4EAAgQgAAoDwEYAAAAAAAAAAABAAAAKQAAAAAIAgEAAAAXTQUAOgAAAAAcBAUAjAIBAIwD//+oAhAATQYAOgAAAACHBQYEmgULAAEAAACkBQMAAAgQgE0GADoAAAAAUgcEAJ8FAwH7BQAAUgYBAJ8FAgGCAAEAiwLw/4IAAQAEAwoDDQMQBAAIEIAALREBGAAAAAAAAAEAAAAAAQAAAAAAAQAAAfwHLgAAAAAIAQEAAAAQTQEAOgAAAADGAgAAxgMAAGQBAwD7BgAAUgcFAJ8GAgFuAfz/AgAAAKQBAwAACBCATQIAOgAAAACfAQIBggABAAQDCgMNAxIEAAgQgAA3CAEYAAAAAAABAAD/AAMAAAAAATgAAAAAAwAAAQIAGKMAAAD/AAAAAAAAADAAAG4AAAAAwAEBAMACAgASAAAAMAIA7wMAAAAwAQBvBAAAAMACBQAwAgBfBgAAAMACBwASAAEAMAIAaQgAAADAAgkAEgABADACAPEKAAAAggACAAsDEwYABgEDDAMJBgIDDwYDAxEGBAMIBQABAgMEAQABGAAQAAEAAgwAAAAGAAIAAAUAAAAKAAAABwEAAAAABT5a0KPYYasLDJ66N74lBOyKw+hLVlFFqsO/W8pIP0x+6mZn7I4Zbzw=

local u1 = {}
u1.__index = u1
local function u3(p2) --[[Anonymous function at line 20]]
    if typeof(p2) == "RBXScriptConnection" then
        p2:Disconnect()
        return
    elseif type(p2) == "function" then
        p2()
        return
    elseif typeof(p2) == "Instance" then
        p2:Destroy()
    else
        p2:Cleanup()
    end
end
function u1.new() --[[Anonymous function at line 32]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v4 = u1
    return setmetatable({
        ["_items"] = {}
    }, v4)
end
u1.clean = u3
function u1.Add(p5, p6) --[[Anonymous function at line 40]]
    local v7 = p5._items
    table.insert(v7, p6)
    return #p5._items
end
function u1.Remove(p8, p9) --[[Anonymous function at line 45]]
    --[[
    Upvalues:
        [1] = u3
    --]]
    for v10 = #p8._items, 1, -1 do
        if p8._items[v10] == p9 then
            table.remove(p8._items, v10)
            u3(p9)
            return
        end
    end
end
function u1.Cleanup(p11) --[[Anonymous function at line 55]]
    --[[
    Upvalues:
        [1] = u3
    --]]
    for _, v12 in p11._items do
        u3(v12)
    end
    table.clear(p11._items)
end
return u1