--devbgascension

-- Bytecode (Base64):
-- BgMMBnN0cmluZwZhc3NlcnQDbGVuA3N1YhFGaW5kTGFzdENoYXJhY3RlcgRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQJRnJhbWV3b3JrAVQAAgoCAQAABwQAAAUCAwMq+wQAAE0DBEEAAAAAUgQAAJ8DAgBMAQACpAICAAAAEECfAgAB+wQAAE0DBEEAAAAAUgQBAJ8DAgBMAQACpAICAAAAEECfAgABuysAA1IDAACkAgQAAAwAgJ8CAgJSBQIAjAMBAIwE//+oAw0ANC0ABgUFAABSBwAAUggFAFIJBQCkBgYAABQAgJ8GBAKaBgMAAQAAAHgGBQeCBgIAiwPz/4wD//+CAwIACAMBAwIEAAAQQAMDBAAMAIADBAQAFACAAgAAAAAAAPA/AAwFARgAAAAAAAAAAAABAAAAAAAAAAABAAAAAAEAAAABAAAAAAAAAAAAAQD+BQAQAAAAAAUAAAECABOjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNBAASBgAAAE0DBBwHAAAATQIDdQgAAACfAQICwAIJABIAAQCCAgIACgMGBAAAAEADBwMIAwkEAABAQAMKAwsDDAYAAQABAAEYAAIAAAAAAAEAAAAAAAAAAAgAEAEAAAAAAfKvsy3JcrSIwGvZuaFWFPHladwr6tzbLbuf/zty7tGm1P+WT/QZip4=

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.T)
return function(p3, p4) --[[Function name: FindLastCharacter, line 12]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v5 = u2.string
    assert(v5(p3))
    local v6 = u2.string
    assert(v6(p4))
    for v7 = string.len(p3), 1, -1 do
        if string.sub(p3, v7, v7) == p4 then
            return v7 - 1
        end
    end
    return -1
end