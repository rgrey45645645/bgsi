--devbgascension

-- Bytecode (Base64):
-- BgMhBXRhYmxlBmFzc2VydAZudW1iZXIABnN0cmluZwNyZXABIAVwYWlycwZmb3JtYXQHWyVzXSA9IAR0eXBlASIIdG9zdHJpbmcEbmV4dAJ7fQNsZW4BLgh0b251bWJlcgQnJXMnDOKWvCB7CiVzCiVzfQvilrYgeyDigKYgfQIsCgZ7CiVzCn0CJXMDc3ViCVNlcmlhbGl6ZQRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQJRnJhbWV3b3JrAVQAAhUEAgAACQYAAAUEBAIEA7kB+wYAAE0FBksAAAAAUgYAAJ8FAgBMAQACpAQCAAAAEECfBAAB+wYAAE0FBmADAAAAUgYBAJ8FAgBMAQACpAQCAAAAEECfBAAB+wYAAE0FBksAAAAAUgYCAJ8FAgBMAQACpAQCAAAAEECfBAABkAEBBJADAwVvBAUApAUIAAAcYIBvBgkAlQcBCp8FAwKkBgwAAACwQFIHAACfBgIEFwaBAKQLDgAANGCAbwwPALsoCQNSDwkApA4RAAAAAEGfDgIC8A4DAAMAAIBSDQkAKw0JAG8OEgC7PwkDUhIJAKQRFAAAADBBnxECAlIPEQBvEBIAcw0OEJ8LAwK7KAoDUg0KAKQMEQAAAABBnwwCAvAMTAAAAACApAwWAAAAUEFSDQoAnwwCAkcMBQAAAACAUgwLAG8NFwBzCwwNZQBVAA4CNABSDQMAuysDA1IRAwCkEBkAAGBggJ8QAgINEAMABAAAgG8OBQBlAAEAbw4aALsoCQNSEQkApBARAAAAAEGfEAIC8BANAAYAAIC7PgkDUhEJAKQQHAAAALBBnxACAg4QBgCkDw4AADRggG8QHQBSEQkAnw8DAisPAQBSDwkAcwwND4cNAgwODQ4AUg0LAKQODgAANGCAbw8eAPsQAQBSEQoAlRIBClITAgBSFAwAnxAFAlIRBQCfDgQCcwsNDmUAJABSDQsAbw4fAHMLDQ5lACAAUgwLAKQNDgAANGCAbw4eAPsPAQBSEAoAlREBCp8PAwJSEAUAnw0EAnMLDA1lABQAuygKA1INCgCkDBEAAAAAQZ8MAgLwDAcABgAAgFIMCwBvDRIAUg4KAG8PEgBzCwwPZQAHAFIMCwC7PwoDUg4KAKQNFAAAADBBnw0CAnMLDA1SDAQAUg0FAFIOCwBvDyAAcwQMD24Gfv8CAAAApAYOAAA0YIANAQMABAAAgG8HIQBlAAEAbwciAIwKAQCMC/3/vAgE8CMAAACfCAQAnwYAAIIGAAAkAwEDAgQAABBAAwMCAAAAAAAAAAADBAMFAwYEABxggAMHAgAAAAAAAPA/AwgEAACwQAMJBAA0YIADCgMLBAAAAEEDDAMNBAAAMEEDDgQAAFBBAw8DEAQAYGCAAxEDEgQAALBBAxMDFAMVAxYDFwMYAxkADRoBGAAAAAAAAAAAAAEAAAAAAAAAAAEAAAAAAAAAAAEBAQEAAAAAAQAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAEAAAAAAAEAAAABAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAEAAAAAAAAAAAAAAAAAAgAAAAMAAAAAAAAAAAAAAAIAAAAAAAABAAAAAAACAAAAAAAAAgAAAADsABYAAAAAAAAAAAAAAAAAEwAAAAAFAAABAgAUowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQQAEgYAAABNAwQcBwAAAE0CA3UIAAAAnwECAsACCQASAAEAEgACAIICAgAKAxsEAAAAQAMcAx0DHgQAAEBAAx8DIAMhBgABAAEAARgAAgAAAAAAAQAAAAAAAAAACQAAJwEAAAAAAXQoXs1fa8fWRuw0WZ129yGcQyy/OYEquJwEisz0iN1fT9JSazaY0TQ=

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.T)
local function u21(p3, p4, p5, p6) --[[Anonymous function at line 13]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u21
    --]]
    local v7 = u2.table
    assert(v7(p3))
    local v8 = u2.number
    assert(v8(p4))
    local v9 = u2.table
    assert(v9(p5))
    local v10 = p4 or 0
    local v11 = string.rep(" ", v10 + 1)
    local v12 = ""
    local v13 = p6 or ""
    for v19, v15 in pairs(p3) do
        local v16 = string.format("[%s] = ", type(v19) == "number" and v19 and v19 or "\"" .. tostring(v19) .. "\"")
        local v17
        if type(v15) == "table" then
            if next(v15) == nil then
                v17 = v16 .. "{}"
            elseif p5 then
                local v18 = string.len(v13) == 0 and "" or "."
                if type(v19) == "string" and tonumber(v19) then
                    local v19 = string.format("\'%s\'", v19) or v19
                end
                local v20 = v13 .. v18 .. v19
                if p5[v20] then
                    v17 = v16 .. string.format("\226\150\188 {\n%s\n%s}", u21(v15, v10 + 1, p5, v20), v11)
                else
                    v17 = v16 .. "\226\150\182 { \226\128\166 }"
                end
            else
                v17 = v16 .. string.format("\226\150\188 {\n%s\n%s}", u21(v15, v10 + 1), v11)
            end
        elseif type(v15) == "string" then
            v17 = v16 .. "\"" .. v15 .. "\""
        else
            v17 = v16 .. tostring(v15)
        end
        v12 = v12 .. v11 .. v17 .. ",\n"
    end
    return string.format(v10 == 0 and "{\n%s\n}" or "%s", v12:sub(1, -3))
end
return u21