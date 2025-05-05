--devbgascension

-- Bytecode (Base64):
-- BgMaBnN0cmluZwZmb3JtYXQEJS4xZgYlLj8wKyQABGdzdWIBJQQlLjZmAiVnBGZpbmQBZQh0b3N0cmluZwQxLyUqBCUqJSUFJTAuMWYNRm9ybWF0UGVyY2VudARnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQJRnJhbWV3b3JrCVV0aWxpdGllcwZTdHJpbmcMRm9ybWF0U3VmZml4DEZvcm1hdENvbW1hcwACCQICAAAHBAAABQICD2UOAToAjAIBAGACDwAAAAAApAUCAAAEAIBvBgMAUgcAAJ8FAwJvBwQAbwgFALwFBcwGAAAAnwUEAlIDBQBvBAcAcwIDBIICAgBvAggAYAIPAAAAAACkBQIAAAQAgG8GCQBSBwAAnwUDAm8HBABvCAUAvAUFzAYAAACfBQQCUgMFAG8EBwBzAgMEggICAKQCAgAABACAbwMKAFIEAACfAgMCpAMMAAAsAIBSBAIAbwUNAJ8DAwIOAwQAUgQCAG8FBwBzAwQFggMCALs/AANSBwAApAYPAAAA4ECfBgICUgQGAG8FBwBzAwQFggMCAKkCAACMAwEAYAAGAAMAAACMAwAAtwMCAAAAAACpAgABqQIBACEDABANAwIAEQAAAA4CFAAqAgoAAQAAgG8EEgD7BgAA2AcTAJ8GAgK8BASNAQAAAJ8EAwJSAwQAggMCAG8EFAD7BgEAUgcAAJ8GAgK8BASNAQAAAJ8EAwJSAwQAggMCAKQGAgAABACAbwcVAFIIAACfBgMCUgQGAG8FBwBzAwQFggMCABYDAQMCBAAEAIADAwMEAwUDBgMHAi1DHOviNho/AwgDCQMKBAAsAIADCwMMBAAA4EACAAAAAAAA8D8CAAAAAAAAAAADDQIAAAAAAABZQAMOAw8ACRABGAABAAACAAAAAAAAAAAAAAAAAAEAAAIAAAAAAAAAAAAAAAAACwAAAAABAAAAAAABAAAAAgAAAAAAAAAABAAAAAAAAAAAAQAAAAEAAQAAAAAAAAAAAgAAAAAAAAAAAwAAAAAAAAAACgAAAAAIAAABAgAlowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQYAEgYAAABNBQYcBwAAAE0EBbUIAAAATQMEoQkAAABNAgPGCgAAAJ8BAgKkAgUAAABAQE0HABIGAAAATQYHHAcAAABNBQa1CAAAAE0EBaEJAAAATQMEmgsAAACfAgICwAMMABIAAQASAAIAggMCAA0DEQQAAABAAxIDEwMUBAAAQEADFQMWAxcDGAMZAxoGAAEAAQABGAACAAAAAAACAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAMAACgBAAAAAAHcna5QKopX7+5ZxMSkWpHIjF2I3Nc/qxArCU4lYgfLrhnjDF0+jfVu

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.Utilities.String.FormatSuffix)
local u3 = require(v1.Shared.Framework.Utilities.String.FormatCommas)
return function(p4, p5) --[[Function name: FormatPercent, line 9]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
    --]]
    if p5 then
        if p4 > 1 then
            return string.format("%.1f", p4):gsub("%.?0+$", "") .. "%"
        elseif p4 > 0.0001 then
            return string.format("%.6f", p4):gsub("%.?0+$", "") .. "%"
        else
            local v6 = string.format("%g", p4)
            if string.find(v6, "e") then
                return v6 .. "%"
            else
                return tostring(p4) .. "%"
            end
        end
    else
        local v7
        if p4 < 1 then
            v7 = p4 > 0
        else
            v7 = false
        end
        if p4 % 1 == 0 or v7 then
            if v7 == true then
                return ("1/%*"):format((u2(100 / p4)))
            else
                return ("%*%%"):format((u3(p4)))
            end
        else
            return string.format("%0.1f", p4) .. "%"
        end
    end
end