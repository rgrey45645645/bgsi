--devbgascension

-- Bytecode (Base64):
-- BgMgB0Rlc3Ryb3kCb3MFY2xvY2sDR2V0DVNvdW5kIEVmZmVjdHMIU2V0dGluZ3MFQ2xvbmUDTWF4A01pbgRtYXRoA21pbg1QbGF5YmFja1NwZWVkBlZvbHVtZQ5QbGF5TG9jYWxTb3VuZAR0YXNrBWRlbGF5ClRpbWVMZW5ndGgGQnVmZmVyB1JhbXBpbmcFUGl0Y2gLTnVtYmVyUmFuZ2UDbmV3DlNxdWVudGlhbFNvdW5kBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQxTb3VuZFNlcnZpY2UHcmVxdWlyZQZDbGllbnQJRnJhbWV3b3JrCFNlcnZpY2VzCUxvY2FsRGF0YQAEAgABAAAABfsAAAC8AABQAAAAAJ8AAgGCAAEAAQMBADQAARgAAAAAATUAAAAADAAIAAAAQqQAAgAABACAnwABAvsCAAAmAQAC+wIBAGACAwABAAAAjAIAAN4CAgD7AgIAlQICA94CAgDeAAAA+wIDALwCAn8EAAAAnwICAg4CBgBNBQLKBwAAAE0EBXAGAAAAPgMEBWUAAQCMAwEA+wQEALwEBDoIAAAAnwQCAvsHBQBNBge0CQAAAPsJBQBNCAnYCgAAAPsLAgB4CgsD+wsGAOwJCgtDBwgJnhMGAwcAAACkBQ0AADCwgJ8FAwIwBQQoDgAAAE0FBEsPAAAACQUFAzAFBEsPAAAA+wUHAFIHBAC8BQUsEAAAAJ8FAwGkBRMAAEgQgU0GBNYUAAAA2QcAABIABACfBQMBggABABUDAgMDBAAEAIACAAAAAAAA8D8DBAIAAAAAAABZQAMFAwYDBwMIAwkDCgMLBAAwsIADDAMNAw4DDwMQBABIEIEDEQEAIwABGAAAAAEAAQAAAQACAAABAgAAAAEAAAAAAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAgAAAAABAAAAAAAAAyQAAAAACgICAAAHBAAABQIHhB+MAgAAjAMAAFIEAQArBAIA/wQAAAAAAABNBgTRAQAAAJAFBgBNBwRyAwAAAJAGBwJNBwQABAAAACsHBQCkBwcAABhQgIwIAQCMCQMAnwcDAtkIAAASAQP/EgAFABIBAv8SAgAAEgAAABIABwASAAYAEgIBAMECAACCCAIACAIAAAAAAADgPwMSAgAAAAAAABxAAxMDFAMVAxYEABhQgAEBGBcBGAABAQAAAAEAAAEAAAEAAAAAAAAAAgAAAAAAAAAAAAAcAAAAAAcAAAECAByjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIGAAAAUEBNBgBNBwAAAE0FBhwIAAAATQQFQwkAAABNAwRoCgAAAJ8CAgLAAwsAEgACABIAAQCCAwIADAMYBAAAAEADGQMaAxsDHAQAAFBAAx0DHgMfAyAGAgECAQABGAACAAAAAAABAAAAAAACAAAAAAAAAAAAABIAACIBAAAAAAM9QiMJWRjsCQ+GSZ3Vxw4WoTfBpqt7G9BrbXsUxQMtCKR+2m9PZBqI

local v1 = game:GetService("ReplicatedStorage")
local u2 = game:GetService("SoundService")
local u3 = require(v1.Client.Framework.Services.LocalData)
return function(u4, p5) --[[Function name: SquentialSound, line 24]]
    --[[
    Upvalues:
        [1] = u3
        [2] = u2
    --]]
    local u6 = 0
    local u7 = 0
    local v8 = p5 or {}
    local u9 = v8.Buffer or 0.5
    local u10 = v8.Ramping or 7
    local u11 = v8.Pitch or NumberRange.new(1, 3)
    return function() --[[Anonymous function at line 35]]
        --[[
        Upvalues:
            [1] = u7
            [2] = u9
            [3] = u6
            [4] = u3
            [5] = u4
            [6] = u11
            [7] = u10
            [8] = u2
        --]]
        local v12 = os.clock()
        if u9 < v12 - u7 then
            u6 = 0
        end
        u6 = u6 + 1
        u7 = v12
        local v13 = u3:Get()
        local v14 = not v13 and 1 or v13.Settings["Sound Effects"] / 100
        local u15 = u4:Clone()
        local v16 = u11.Max
        local v17 = u11.Min + (u6 - 1) / u10
        u15.PlaybackSpeed = math.min(v16, v17)
        u15.Volume = u15.Volume * v14
        u2:PlayLocalSound(u15)
        task.delay(u15.TimeLength, function() --[[Anonymous function at line 52]]
            --[[
            Upvalues:
                [1] = u15
            --]]
            u15:Destroy()
        end)
    end
end