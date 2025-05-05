--devbgascension

-- Bytecode (Base64):
-- BgMEBnNlYXJjaAV0YWJsZQRwYWNrBGZpbmQAAwsDAAAACAUAAAUDBA8EF1IDAABSBAIAxgUAAMYGAABkBA4AHAkCAJoHBwAJAAAAqQkAAIcKAwiaCgIAAQAAAFIJAwCCCQIAhwMDCEcDAwAAAACAxgkAAIIJAgBuBPH/AgAAAMYEAACCBAIAAAADAQEYAAEAAAABAAABAAAAAAACAQABAPoACgAIAAAAAA0CAQEABwQAAAUCBA8UowIAAMYCAACkAwIAAAQAgN0EAACfAwACUgQAAMYFAADGBgAAZAQHAPsJAABSCggAUgsBAFIMAwCfCQQCUgIJACsCAgBuBPj/AgAAAIICAgADAwIDAwQABACAABYEARgABQEAAAABAAAAAQAAAAAAAf4ABhYAAAAAAgAAAQIABaMAAADAAAAAwAEBABIAAACCAQIAAgYABgECAAEBAAEYAAITABABAAAAAAIgDE/riDMIdRLIJX9X43ibZdruF3d7thF7Ts6sO1I8oy5+Ymn/NJs/

local function u6(p1, p2, p3) --[[Anonymous function at line 3]]
    for v4, v5 in p3 do
        if v4 == #p3 then
            if p1[v5] ~= p2 then
                p1 = false
            end
            return p1
        end
        p1 = p1[v5]
        if p1 == nil then
            return nil
        end
    end
    return nil
end
return function(p7, p8, ...) --[[Function name: find, line 22]]
    --[[
    Upvalues:
        [1] = u6
    --]]
    local v9 = table.pack(...)
    local v10 = nil
    for _, v11 in p7 do
        v10 = u6(v11, p8, v9)
        if v10 then
            break
        end
    end
    return v10
end