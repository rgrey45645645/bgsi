--devbgascension

-- Bytecode (Base64):
-- BgMOBG5leHQHaXNFbXB0eQR0eXBlBXRhYmxlG2N1cnJlbnREYXRhIG11c3QgYmUgYSB0YWJsZQZhc3NlcnQXbmV3RGF0YSBtdXN0IGJlIGEgdGFibGUFcGFpcnMDbmV3A29sZARkaWZmFGRhdGEgbXVzdCBiZSBhIHRhYmxlF2NoYW5nZXMgbXVzdCBiZSBhIHRhYmxlBXBhdGNoAAQEAQAAAAAJpAIBAAAAAEBSAwAAnwICAkcCAgAAAAAAqQEAAakBAQCCAQIAAgMBBAAAAEAABwIBGAAAAAAAAAAAAAgAAAAADQIBAAAAcbsoAANSBQAApAQBAAAAAECfBAIC8AQCAAIAAACpAwABqQMBAIEBAwQDAAAAbwQDAKQCBQAAAEBAnwIDAbsoAQNSBQEApAQBAAAAAECfBAIC8AQCAAIAAACpAwABqQMBAIEBAwQGAAAAbwQGAKQCBQAAAEBAnwIDAf8CAAAAAAAApAMIAAAAcEBSBAEAnwMCBBcDOwCHCAAGRwgGAAAAAIDiCQoAMAcJ7wkAAABqCQIGZQAzALsoCANSCggApAkBAAAAAECfCQICuygHA1ILBwCkCgEAAAAAQJ8KAgKaCQoACgAAALsoCANSCggApAkBAAAAAECfCQIC8AkKAAIAAADxCAgABwAAAOIJDAAwCAmnCwAAADAHCe8JAAAAagkCBmUAFwC7KAgDUgoIAKQJAQAAAABAnwkCAvAJEQACAACA+woAAE0JCsoNAAAAUgoIAFILBwCfCQMCpAsPAAAA4EBSDAkAnwsCAkcLAgAAAAAAqQoAAakKAQArCgEAagkCBm4DxP8CAAAApAMIAAAAcEBSBAAAnwMCBBcDBwCHCAEGRwgFAAAAAIDiCBAAMAcIpwsAAABqCAIGbgP4/wIAAACCAgIAEQMDBAAAAEADBAMFAwYEAABAQAMHAwgEAABwQAMJBQEJAwoFAgsJAwsDAQQAAOBABQELAAwLARgFAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAACAAMAAAAAAQEAAQAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAQAAAAAAAAEAAAAAAO4AAAAAAAAAABT3AA8AAAAAAQAAAQAAAP4ABggAAAAACgIBAAAAQrsoAANSBQAApAQBAAAAAECfBAIC8AQCAAIAAACpAwABqQMBAIEBAwQDAAAAbwQDAKQCBQAAAEBAnwIDAbsoAQNSBQEApAQBAAAAAECfBAIC8AQCAAIAAACpAwABqQMBAIEBAwQGAAAAbwQGAKQCBQAAAEBAnwIDAaQCCAAAAHBAUgMBAJ8CAgQXAhwATQcG7wkAAABHBwUAAAAAAE0HBu8JAAAAagcABWUAFABNBwanCgAAAEcHBAAAAAAAxgcAAGoHAAVlAA0AhwgABbsoCAKkBwEAAAAAQJ8HAgLwBwcAAgAAgPsIAABNBwjqCwAAAIcIAAVSCQYAnwcDAW4C4/8CAAAAggABAAwDAwQAAABAAwQDDAMGBAAAQEADDQMIBAAAcEADCQMKAw4ALA4BGAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAIAAAAAAQAAAAEAAAABAAAAAQAAAwAAAAAAAAEAAAAAAPgADC0AAAAAAwAAAQIADaMAAAD/AAIAAAAAAMABAADAAgEAEgAAADACAMoCAAAAwAIDABIAAAAwAgDqBAAAAIIAAgAFBgAGAQMLBgIDDgMAAQIBAAEYAAMAAwUAAAAgAAAAEgEAAAAAAwQ8i5OZ/0uUNvjhB2nNkN/CkwXM3lNBaWORtR72KiEzF606gH3/En0=

local u19 = {
    ["diff"] = function(p1, p2) --[[Function name: diff, line 12]]
        --[[
        Upvalues:
            [1] = u19
        --]]
        local v3 = type(p1) == "table"
        assert(v3, "currentData must be a table")
        local v4 = type(p2) == "table"
        assert(v4, "newData must be a table")
        local v5 = {}
        for v6, v7 in pairs(p2) do
            local v8 = p1[v6]
            if v8 == nil then
                v5[v6] = {
                    ["new"] = v7
                }
            elseif type(v8) == type(v7) and (type(v8) == "table" or v8 == v7) then
                if type(v8) == "table" then
                    local v9 = u19.diff(v8, v7)
                    if next(v9) ~= nil then
                        v5[v6] = v9
                    end
                end
            else
                v5[v6] = {
                    ["old"] = v8,
                    ["new"] = v7
                }
            end
        end
        for v10, v11 in pairs(p1) do
            if p2[v10] == nil then
                v5[v10] = {
                    ["old"] = v11
                }
            end
        end
        return v5
    end,
    ["patch"] = function(p12, p13) --[[Function name: patch, line 44]]
        --[[
        Upvalues:
            [1] = u19
        --]]
        local v14 = type(p12) == "table"
        assert(v14, "data must be a table")
        local v15 = type(p13) == "table"
        assert(v15, "changes must be a table")
        for v16, v17 in pairs(p13) do
            if v17.new == nil then
                if v17.old == nil then
                    local v18 = p12[v16]
                    if type(v18) == "table" then
                        u19.patch(p12[v16], v17)
                    end
                else
                    p12[v16] = nil
                end
            else
                p12[v16] = v17.new
            end
        end
    end
}
return u19