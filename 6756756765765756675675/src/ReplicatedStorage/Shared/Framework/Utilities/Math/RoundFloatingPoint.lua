--devbgascension

-- Bytecode (Base64):
-- BgMSBm51bWJlcgZhc3NlcnQEbWF0aARtb2RmA2FicwVmbG9vcgZzdHJpbmcGZm9ybWF0BCUuNWYIdG9udW1iZXISUm91bmRGbG9hdGluZ1BvaW50BGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAlGcmFtZXdvcmsBVAACCQEBAAAGAwAABQECMfsDAABNAgNgAAAAAFIDAACfAgIATAEAAqQBAgAAABBAnwEAAbsUAANSAgAApAEFAAAQMICfAQIDuwICA1IEAgCkAwcAABgwgJ8DAgJvBAgAtwMJAAQAAAB4BAIJuwIEAqQDBwAAGDCAnwMCAm8ECABgAwIABAAAAIIBAgBbBgAKlQUGC7sMBQKkBA0AADAwgJ8EAgI+AwQKpAYRAABA8IBvBxIAUggDAJ8GAwBMPgACpAUUAAAAMEGfBQACkAQFDoIEAgAVAwEDAgQAABBAAwMDBAQAEDCAAwUEABgwgAKN7bWg98awPgIAAAAAAADwPwIAAAAAAGr4QAIAAAAAAADgPwMGBAAwMIACAAAAAAAAAAADBwMIBABA8IADCQMKBAAAMEEABwsBGAAAAAAAAAAAAAIAAAAAAgAAAAAAAAAAAAAAAAAAAAEDAAAAAAAAAQAAAAAAAAAAAAAIAAAAAAUAAAECABOjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNBAASBgAAAE0DBBwHAAAATQIDdQgAAACfAQICwAIJABIAAQCCAgIACgMMBAAAAEADDQMOAw8EAABAQAMQAxEDEgYAAQABAAEYAAIAAAAAAAEAAAAAAAAAAAMADwEAAAAAAZOF3jgak89VoUG0rF2CTYC4EoYlfadEMdy+7bzsZrOETln19eVpLqw=

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.T)
return function(p3) --[[Function name: RoundFloatingPoint, line 7]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v4 = u2.number
    assert(v4(p3))
    local v5, v6 = math.modf(p3)
    if math.abs(v6) >= 1e-6 then
        local v7 = v6 - 1
        if math.abs(v7) >= 1e-6 then
            local v8 = p3 * 100000 + 0.5
            local v9 = math.floor(v8) / 100000
            local v10 = string.format
            return tonumber(v10("%.5f", v9)) or 0
        end
    end
    return v5
end