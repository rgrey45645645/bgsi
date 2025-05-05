--devbgascension

-- Bytecode (Base64):
-- BgMECGRlZmVycmVkBHRhc2sFZGVmZXIQRGVmZXJyZWRDYWxsYmFjawAEAQACAAAABakAAADeAAAA+wABAJ8AAQGCAAEAAAAJAQEYAAABAAEKAAAAAAIAAgAAAAr7AAAADgABAIIAAQCpAAEA3gAAAKQAAgAABACA+wEBAJ8AAgGCAAEAAwMCAwMEAAQAgAAOAAEYAAABAgABAAAAAQ8AAAAABAEAAAAGAwAABQEFCakBAADZAgAAEgEB/xIAAADZAwEAEgEB/xIAAgDBAQAAggMCAAACAAEHBAEYAAEAAAUAAAAACAAAAAABAAABAgADowAAAMAAAACCAAIAAQYCAQIBAAEYAAYQAQAAAAADs9V5wBBwnVWBERNUZF4jIyZr2/XDEg/i3OEXlb9wY4iJn/EqcN52lA==

return function(u1) --[[Function name: DeferredCallback, line 7]]
    local u2 = false
    local function u3() --[[Anonymous function at line 9]]
        --[[
        Upvalues:
            [1] = u2
            [2] = u1
        --]]
        u2 = false
        u1()
    end
    return function() --[[Anonymous function at line 14]]
        --[[
        Upvalues:
            [1] = u2
            [2] = u3
        --]]
        if not u2 then
            u2 = true
            task.defer(u3)
        end
    end
end