--devbgascension

-- Bytecode (Base64):
-- BgMFBXBhaXJzBHR5cGUIZnVuY3Rpb24FdGFibGUMQ29tcGFyZVRhYmxlAAINAwEAAAgFAAAFA4SEgVIOAAEAKwECAKkDAACCAwIAHAMAABwEAQDxAwMABAAAAKkDAACCAwIApAMBAAAAAEBSBAAAnwMCBBcDMwCHCAEGuygHA1IKBwCkCQMAAAAgQJ8JAgK7KAgDUgsIAKQKAwAAACBAnwoCAvEJAwAKAAAAqQkAAIIJAgAOAg8AuygHA1IKBwCkCQMAAAAgQJ8JAgLwCQkABAAAgLsoCANSCggApAkDAAAAIECfCQIC8AkCAAQAAIBlABQAuygHA1IKBwCkCQMAAAAgQJ8JAgLwCQoABQAAgPsJAABSCgcAUgsIAFIMAgCfCQQCKwkHAKkJAACCCQIAZQAEAPEHAwAIAAAAqQkAAIIJAgBuA8z/AgAAAKQDAQAAAABAUgQBAJ8DAgQXAwUAhwgABkcIAwAAAACAqQgAAIIIAgBuA/r/AgAAAKkDAQCCAwIABgMBBAAAAEADAgQAACBAAwMDBAADBQEYAAABAAMAAAABAAMAAAAAAQEAAAAAAAAAAAAAAAEAAwAAAAAAAAAAAAAAAAAAAAIAAAAAAAABAAAAAAABAAACAAEA8wARAAAAAAEAAAEA/gAGAAgAAAAAAQAAAQIABKMAAADAAAAAEgAAAIIAAgABBgABAAEAARgAAgAnAQAAAAABhGGaQPklrkG2pfDUeYhf7+ClnHYwhYDvWJ+8LPKM6EOcC6HRtz3LuA==

local function u8(p1, p2, p3) --[[Anonymous function at line 3]]
    --[[
    Upvalues:
        [1] = u8
    --]]
    if not (p1 and p2) then
        return false
    end
    if #p1 ~= #p2 then
        return false
    end
    for v4, v5 in pairs(p1) do
        local v6 = p2[v4]
        if type(v5) ~= type(v6) then
            return false
        end
        if not p3 or (type(v5) ~= "function" or type(v6) ~= "function") then
            if type(v5) == "table" then
                if not u8(v5, v6, p3) then
                    return false
                end
            elseif v5 ~= v6 then
                return false
            end
        end
    end
    for v7, _ in pairs(p2) do
        if p1[v7] == nil then
            return false
        end
    end
    return true
end
return u8