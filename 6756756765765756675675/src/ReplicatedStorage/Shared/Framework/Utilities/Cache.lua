--devbgascension

-- Bytecode (Base64):
-- BgMBBUNhY2hlAAMEAQIAAAYDAAAFAQcL+wIAAIcBAgBHAQIAAAAAAIIBAgD7AgEAUgMAAJ8CAgL7AwAAagIDAIICAgAAAAYAARgAAAEAAQMAAAEAAgcAAAAAAwEAAAAGAwAABQEFBv8BAAAAAAAA2QIAABIAAQASAAAAggICAAABAAMBARgAAAIAAAAEAAAAAAEAAAECAAOjAAAAwAAAAIIAAgABBgEBAQEAARgAAhABAAAAAAJ84+dQ83GN+E4njcSheteN+rkMkiyC2xMLfCcd2+k/9BlQtK+535Dx

return function(u1) --[[Function name: Cache, line 3]]
    local u2 = {}
    return function(p3) --[[Anonymous function at line 6]]
        --[[
        Upvalues:
            [1] = u2
            [2] = u1
        --]]
        local v4 = u2[p3]
        if v4 ~= nil then
            return v4
        end
        local v5 = u1(p3)
        u2[p3] = v5
        return v5
    end
end