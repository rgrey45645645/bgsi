--devbgascension

-- Bytecode (Base64):
-- BgMXDm51bWJlclBvc2l0aXZlBmFzc2VydAlfZHVyYXRpb24IX3RocmVhZHMMc2V0bWV0YXRhYmxlA25ldwNIYXMEdGFzawZjYW5jZWwFZGVsYXkDQWRkBlJlbW92ZQV0YWJsZQVjbGVhcgdEZXN0cm95BGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAlGcmFtZXdvcmsBVAdfX2luZGV4AAcEAQIAAAAX+wMAAE0CA8QAAAAAUgMAAJ8CAgBMAQACpAECAAAAEECfAQAB4gIFADAAAmoDAAAA/wMAAAAAAAAwAwJ7BAAAAPsDAQCePQIDAwAAAKQBBwAAAGBAnwEDAoIBAgAIAwEDAgQAABBAAwMDBAUCAwQDBQQAAGBAABkGARgAAAAAAAAAAAABAQABAAAAAQAA/QAAABoAAAAABQIAAAAACE0EAHsAAAAAhwMEAUcDAgAAAACAqQIAAakCAQCCAgIAAQMEACEHARgAAAAAAAAAACIAAAAAAwACAAAAB/sBAABNAAF7AAAAAPsBAQDGAgAAagIAAYIAAQABAwQAKgABGAAAAAAAAAErAAAAAAcCAAAAABRNAwB7AAAAAIcCAwEOAgQApAMDAAAIEIBSBAIAnwMCAU0DAHsAAAAApAQFAAAQEIBNBQBqBgAAANkGAAASAAAAEgABAJ8EAwJqBAMBggABAAcDBAMIAwkEAAgQgAMKBAAQEIADAwECJQsBGAAAAAEBAAAAAgAAAAAAAAAAAAADJgAAAAAFAgAAAAANTQMAewAAAACHAgMBDgIIAKQDAwAACBCAUgQCAJ8DAgFNAwB7AAAAAMYEAABqBAMBggABAAQDBAMIAwkEAAgQgAAvDAEYAAAAAQEAAAABAAAAAjAAAAAACAEAAAAAEU0BAHsAAAAAxgIAAMYDAABkAQQApAYDAAAIEIBSBwUAnwYCAW4B+/8CAAAApAEGAAAUQIBNAgB7AAAAAJ8BAgGCAAEABwMEAwgDCQQACBCAAw0DDgQAFECAADcPARgAAAAAAAEAAAD/AAMAAAAAATgAAAAABQAAAQIAJqMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQUAAABAQE0EABIGAAAATQMEHAcAAABNAgN1CAAAAJ8BAgL/AgAAAAAAADACAm4JAAAAwAMKABIAAQASAAIAMAMC7wsAAADAAwwAMAMCPA0AAADAAw4AMAMCXw8AAADAAxAAMAMCaREAAADAAxIAMAMCUBMAAACCAgIAFAMQBAAAAEADEQMSAxMEAABAQAMUAxUDFgMXBgADBgYBAwcGAwMLBgQDDAYFAw8FAAEDBAUBAAEYAAMAAAAAAAEAAAAAAAAAABEAAQACAAAAAAgAAAQAAAoAAAgAAAcBAAAAAAbU9s3NFM+PnOYyp1mT9185WXotIVBRmDF8y+/KMbUuohqt5U1XLg7f

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.T)
local u3 = {}
u3.__index = u3
function u3.new(p4) --[[Anonymous function at line 25]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
    --]]
    local v5 = u2.numberPositive
    assert(v5(p4))
    local v6 = u3
    return setmetatable({
        ["_duration"] = p4,
        ["_threads"] = {}
    }, v6)
end
function u3.Has(p7, p8) --[[Anonymous function at line 33]]
    return p7._threads[p8] ~= nil
end
function u3.Add(u9, u10) --[[Anonymous function at line 37]]
    local v11 = u9._threads[u10]
    if v11 then
        task.cancel(v11)
    end
    u9._threads[u10] = task.delay(u9._duration, function() --[[Anonymous function at line 42]]
        --[[
        Upvalues:
            [1] = u9
            [2] = u10
        --]]
        u9._threads[u10] = nil
    end)
end
function u3.Remove(p12, p13) --[[Anonymous function at line 47]]
    local v14 = p12._threads[p13]
    if v14 then
        task.cancel(v14)
        p12._threads[p13] = nil
    end
end
function u3.Destroy(p15) --[[Anonymous function at line 55]]
    for _, v16 in p15._threads do
        task.cancel(v16)
    end
    table.clear(p15._threads)
end
return u3