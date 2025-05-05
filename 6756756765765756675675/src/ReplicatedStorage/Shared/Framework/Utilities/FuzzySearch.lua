--devbgascension

-- Bytecode (Base64):
-- BgMQA3N1YgRmaW5kBG1hdGgDbWF4DUdldEZ1enp5U2NvcmUFU2NvcmUFcGFpcnMGc3RyaW5nBWxvd2VyBUluZGV4BVZhbHVlBXRhYmxlBmluc2VydARzb3J0BmlwYWlycwtGdXp6eVNlYXJjaAAEDQIAAAAHBAAABQIDAyCMAgAAjAMBAIwGAQAcBAEAjAUBAKgEEQBSCQYAUgoGALwHAfAAAAAAnwcEAlIKBwBSCwMAqQwBALwIAFYBAAAAnwgFAisIAgCMCQAAggkCAJUCAgKVAwgCiwTv/xwGAQAcBwAAnhIGAwcAAACkBQUAABAwgJ8FAwLsBAIFggQCAAYDAQMCAgAAAAAAAPA/AwMDBAQAEDCAAAoFARgAAQIAAAABAAAAAAEAAAAAAAEBAAMB+AsAAAAAAAAAAA4AAAAABQIAAAAACU0DACIAAAAATQQBIgAAAAC3BAIAAwAAAKkCAAGpAgEAggICAAEDBgAxAAEYAAAAAAAAAAAAMgAAAAAMAgAAAAcEAAAFAgQDOv8CAAAAAAAApAMBAAAAAEBSBAAAnwMCBBcDGwA1CABOAgAAAKQJBQAAEDCAUgoGAJ8JAgKkCgUAABAwgFILAQCfCgIAnwgAAowJAABgCQ4ACAAAAOILCQAwCAsiBgAAADAGC+IHAAAAMAcL7AgAAACeNAIECwAAAFIKAgCkCQwAACyggJ8JAwFuA+T/AgAAAKQDDgAANKCAUgQCAMAFDwCfAwMB/wMAAAAAAACkBBEAAAAAQVIFAgCfBAIEUQQHAJ40AwUIAAAAUgoDAFILCACkCQwAACyggJ8JAwFuBPj/AgAAgIIDAgASAwcEAAAAQAMFAwgDCQQAEDCAAwYDCgMLBQMGBwgDDAMNBAAsoIADDgQANKCABgEDDwQAAABBAQEhEAEYAAABAAAAAAEAAAAAAAAAAAAAAQAAAQEAAQABAAAAAP0AAP0ACwAAAAAEAAEAAAAAAQAAAAAAAP8AAyUAAAAAAQAAAQIACqMAAADAAAAAGAAATgEAAADAAAIAGAAAqAMAAAA1AACoAwAAAIIAAgAEBgADBQYCAxACAAIBAAEYAAkAABcAABwAAAEAAAAAAxzNbYiL7gJGLgkHHFYIDPwcfxW4yxAht6z0MecEyS6He0O1GxLnqjE=

function GetFuzzyScore(p1, p2)
    local v3 = 1
    local v4 = 0
    for v5 = 1, #p2 do
        local v6 = p1:find(p2:sub(v5, v5), v3, true)
        if not v6 then
            return 0
        end
        v4 = v4 + 1
        v3 = v6 + 1
    end
    local v7 = #p2
    local v8 = #p1
    return v4 / math.max(v7, v8)
end
function FuzzySearch(p9, p10)
    local v11 = {}
    for v12, v13 in pairs(p9) do
        local v14 = GetFuzzyScore(string.lower(v12), string.lower(p10))
        if v14 > 0 then
            table.insert(v11, {
                ["Score"] = v14,
                ["Index"] = v12,
                ["Value"] = v13
            })
        end
    end
    table.sort(v11, function(p15, p16) --[[Anonymous function at line 49]]
        return p15.Score > p16.Score
    end)
    local v17 = {}
    for _, v18 in ipairs(v11) do
        table.insert(v17, v18)
    end
    return v17
end
return FuzzySearch