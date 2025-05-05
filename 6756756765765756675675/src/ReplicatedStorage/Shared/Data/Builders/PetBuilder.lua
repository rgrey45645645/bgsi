--devbgascension

-- Bytecode (Base64):
-- BgMoB19yYXJpdHkHX2ltYWdlcwZfc3RhdHMGQ29tbW9uBk5vcm1hbAVTaGlueQxVbmtub3duSW1hZ2UHQnViYmxlcwxzZXRtZXRhdGFibGUDbmV3C1Jhcml0eU9yZGVyGSUqIGlzIG5vdCBhIHZhbGlkIFJhcml0eS4GZm9ybWF0BmFzc2VydAZSYXJpdHkGc3RyaW5nBG5vbmUGTXl0aGljC015dGhpY1NoaW55BUltYWdlCF9saW1pdGVkB0xpbWl0ZWQEU3RhdARfdGFnA1RhZwZDaGFuY2UGSW1hZ2VzBVN0YXRzC0xheW91dE9yZGVyBUJ1aWxkBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwlDb25zdGFudHMJRnJhbWV3b3JrAVQHX19pbmRleAAIBQACAAAAHuIBAwBvAgQAMAIBeAAAAADiAgcA+wQAAE0DBEUIAAAAMAMCEAUAAAD7BAAATQMERQgAAAAwAwK0BgAAADACAfUBAAAA4gIKAIwDAQAwAwKkCQAAADACAYcCAAAA+wIBAJ49AQMCAAAApAAMAAAAsECfAAMCggACAA0DAQMCAwMFAwABAgMEAwUDBgUCBQYDBwMIBQEJAwkEAACwQABBCgEYAAEAAAEBAAAAAAEAAAAA/gAEAAAAAAABAAD5AAAAQgAAAAAIAgEAAAAW+wYAAE0FBpgAAAAAhwQFAUcEAgAAAACAqQMAAakDAQBvBQEAUgcBALwFBY0CAAAAnwUDAlIEBQCeAQMDBAAAAKQCBAAAADBAnwIDATABAHgFAAAAggACAAYDCwMMAw0DDgQAADBAAwEATQ8BGAAAAAAAAAAAAAAAAAAAAAAAAAABAAFOAAAAAAgFAQAAADz7BwAATQYHQQAAAABSBwEAnwYCAEwBAAKkBQIAAAAQQJ8FAAH7BwAATQYHQQAAAABSBwIAnwYCAEwBAAKkBQIAAAAQQJ8FAAH7BwAATQYHQQAAAABSBwMAnwYCAisGBQD7BwAATQYHHwMAAABSBwMAnwYCArsBBgKkBQIAAAAQQJ8FAgH7BwAATQYHQQAAAABSBwQAnwYCAisGBQD7BwAATQYHHwMAAABSBwQAnwYCArsBBgKkBQIAAAAQQJ8FAgHiBQgAMAEFEAQAAAAwAgW0BQAAADADBaQGAAAAMAQFsgcAAAAwBQD1CQAAAIIAAgAKAxADDgQAABBAAxEDBQMGAxIDEwUEBAUGBwMCAFQUARgAAAAAAAAAAAABAAAAAAAAAAABAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAABAQABAAEAAQACAAFVAAAAAAIBAAAAAASpAQEAMAEAiQAAAACCAAIAAQMVAGMWARgAAAABZAAAAAAEAwAAAAAETQMAhwAAAABqAgMBggACAAEDAwBpFwEYAAAAAWoAAAAAAgIAAAAAAzABAE8AAAAAggACAAEDGABuGQEYAAABbwAAAAADAQEAAAAf+wEAAJUBAQDeAQAA4gEIAIwCZAAwAgGMAQAAAE0CAE8JAAAAMAIBXwIAAABNAgB4CgAAADACAfIDAAAATQIA9QsAAAAwAgHjBAAAAE0CAIcMAAAAMAIBIQUAAABNAgCJDQAAADACASYGAAAA+wIAADACAQAHAAAAggECAA4CAAAAAAAA8D8DGgMZAw8DGwMcAxYDHQUHAQIDBAUGBwMYAwEDAgMDAxUAdB4BGAAAAAEBAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAB1AAAAAAcAAAECAD+jAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNAwASBgAAAE0CA+8HAAAAnwECAqQCBQAAAEBATQQAEgYAAABNAwQHCAAAAJ8CAgKkAwUAAABAQE0GABIGAAAATQUGHAkAAABNBAV1CgAAAJ8DAgKMBAAA/wUAAAAAAAAwBQVuCwAAAMAGDAASAAIAEgAFADAGBe8NAAAAwAYOABIAAgAwBgXyDwAAAMAGEAASAAMAMAYFqREAAADABhIAMAYFJhMAAADABhQAMAYFbhUAAADABhYAMAYFXxcAAADZBgYAEgEE/zAGBU8YAAAAwQQAAIIFAgAZAx8EAAAAQAMgAyEDIgQAAEBAAyMDJAMlAyYDJwMoBgADCgYBAw8GAgMUBgMDFgYEAxcGBQMZAx4HAAECAwQFBgEAARgAAgAAAAAAAgAAAAAAAAEAAAAAAAABAAAAAAAAAAA1AQABAAMAAAAADAAAAAcAAAAPAAAGAAAFAAAGAAAAEAABAAAAAAessq2aMypPbp52xw5C/OetTVvWTtHT3+etH9hUQJ5WVJgTfzlXmCnT

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = require(v1.Shared.Constants)
local u3 = require(v1.Shared.Framework.T)
local u4 = 0
local u5 = {}
u5.__index = u5
function u5.new() --[[Anonymous function at line 65]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u5
    --]]
    local v6 = {
        ["_rarity"] = "Common",
        ["_images"] = {
            ["Normal"] = u2.UnknownImage,
            ["Shiny"] = u2.UnknownImage
        },
        ["_stats"] = {
            ["Bubbles"] = 1
        }
    }
    local v7 = u5
    return setmetatable(v6, v7)
end
function u5.Rarity(p8, p9) --[[Anonymous function at line 77]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v10 = u2.RarityOrder[p9] ~= nil
    local v11 = ("%* is not a valid Rarity."):format(p9)
    assert(v10, v11)
    p8._rarity = p9
    return p8
end
function u5.Image(p12, p13, p14, p15, p16) --[[Anonymous function at line 84]]
    --[[
    Upvalues:
        [1] = u3
    --]]
    local v17 = u3.string
    assert(v17(p13))
    local v18 = u3.string
    assert(v18(p14))
    local v19 = u3.string(p15) or u3.none(p15)
    assert(v19)
    local v20 = u3.string(p16) or u3.none(p16)
    assert(v20)
    p12._images = {
        ["Normal"] = p13,
        ["Shiny"] = p14,
        ["Mythic"] = p15,
        ["MythicShiny"] = p16
    }
    return p12
end
function u5.Limited(p21) --[[Anonymous function at line 99]]
    p21._limited = true
    return p21
end
function u5.Stat(p22, p23, p24) --[[Anonymous function at line 105]]
    p22._stats[p23] = p24
    return p22
end
function u5.Tag(p25, p26) --[[Anonymous function at line 110]]
    p25._tag = p26
    return p25
end
function u5.Build(p27) --[[Anonymous function at line 116]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    u4 = u4 + 1
    return {
        ["Chance"] = 100,
        ["Tag"] = p27._tag,
        ["Rarity"] = p27._rarity,
        ["Images"] = p27._images,
        ["Stats"] = p27._stats,
        ["Limited"] = p27._limited,
        ["LayoutOrder"] = u4
    }
end
return u5