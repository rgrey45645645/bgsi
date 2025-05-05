--devbgascension

-- Bytecode (Base64):
-- BgMTAklkBVR3ZWVuBVBhdXNlCFBvc2l0aW9uBkNyZWF0ZQZhc3NlcnQEUGxheQR0YXNrBWRlbGF5BFRpbWUHQW5pbWF0ZQRnYW1lDFR3ZWVuU2VydmljZQpHZXRTZXJ2aWNlCVR3ZWVuSW5mbwNuZXcERW51bQtFYXNpbmdTdHlsZQRCYWNrAAMEAAMAAAAO+wEAAPsCAQCHAAECDgAJAE0BAJQAAAAA+wICAJoBBQACAAAA+wEAAPsCAQDGAwAAagMBAoIAAQABAwEAJgABGAAAAAEAAAAAAAEAAAACJwAAAAAKAwMAAAwFAAEFAwcHB4cFFQI5+wQAAIcDBAArAwgA4gQCAMYFAAAwBQTgAAAAAIwFAAAwBQSUAQAAAFIDBABNBQOUAQAAAJUEBQMwBAOUAQAAAE0FA+AAAAAADgUFAE0FA+AAAAAAvAUFXgQAAACfBQIBMAEAOwUAAAD7BQEAUgcAAPsIAgDiCQYAMAIJOwUAAAC8BQWWBwAAAJ8FBQIwBQPgAAAAAE0GA+AAAAAAuwEGAqQFCQAAAIBAnwUCArwFBe4KAAAAnwUCAaQFDQAAMLCA+wcCAE0GB0oOAAAA2QcAABICAAASAAAAEgAEAJ8FAwGCAAEADwMCAwEFAgABAgAAAAAAAPA/AwMDBAUBBQMFAwYEAACAQAMHAwgDCQQAMLCAAwoBAA0LARgAAAEBAQAAAQAAAAMAAAEAAgAAAQAAAAADAAEAAAABAP8AAAAAAwAAAAAAAAAAAgAAAAAAAAAAAAYSAAAAAAUAAAECABijAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMC/wEAAAAAAACkAgYAABRAgG8DBwCkBAsACiSAwJ8CAwLAAwwAEgABABIAAAASAAIAGAMAwg0AAAA1AwDCDQAAAIIDAgAOAwwEAAAAQAMNAw4DDwMQBAAUQIACAAAAAAAA0D8DEQMSAxMECiSAwAYBAwsBAQEAARgAAQAAAAAABwABAAAAAAADAAAAAAAiAAABAAAAAAKEglsYbObuN7ZGMYyfuzEZ3dcEF5rEqMhZpK4fxGTLIspUdg/zQgxc

local u1 = game:GetService("TweenService")
local u2 = {}
local u3 = TweenInfo.new(0.25, Enum.EasingStyle.Back)
function Animate(u4, p5, p6)
    --[[
    Upvalues:
        [1] = u2
        [2] = u1
        [3] = u3
    --]]
    local v7 = u2[u4]
    if not v7 then
        v7 = {
            ["Tween"] = nil,
            ["Id"] = 0
        }
    end
    local u8 = v7.Id + 1
    v7.Id = u8
    if v7.Tween then
        v7.Tween:Pause()
    end
    u4.Position = p5
    v7.Tween = u1:Create(u4, u3, {
        ["Position"] = p6
    })
    local v9 = v7.Tween
    assert(v9):Play()
    task.delay(u3.Time, function() --[[Anonymous function at line 38]]
        --[[
        Upvalues:
            [1] = u2
            [2] = u4
            [3] = u8
        --]]
        local v10 = u2[u4]
        if v10 and v10.Id == u8 then
            u2[u4] = nil
        end
    end)
end
return Animate