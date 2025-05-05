--devbgascension

-- Bytecode (Base64):
-- BgMRA25ldwlhZGRQbGF5ZXIHRGVzdHJveQpHZXRQbGF5ZXJzC1BsYXllckFkZGVkB0Nvbm5lY3QOUGxheWVyUmVtb3ZpbmcTQ3JlYXRlUGxheWVyQnVja2V0cwRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHUGxheWVycwdyZXF1aXJlBlNoYXJlZAlGcmFtZXdvcmsHQ2xhc3NlcwZCdWNrZXQABAUBBAAABgMAAAUBBwv7AQAA+wMBAE0CA+8AAAAA+wMCAFIEAACfAwIC+wQDAJ8CAwJqAgEAggABAAEDAQAOAgEYAAAAAAAAAAAAAAEPAAAAAAMBAQAABwAAAQ8BBQIM+wIAAIcBAgAOAQgA+wIAAIcBAgC8AQFQAAAAAJ8BAgH7AQAAxgIAAGoCAQCCAAEAAQMDABcAARgAAAABAAAAAAEAAAIYAAAAAAwCAgAABwQAAAUCBQ8n/wIAAAAAAADZAwAAEgACABICAAASAAAAEgABAPsEAQC8BASrAAAAAJ8EAgRkBAkA+woAAE0JCu8BAAAAUgoAAFILCACfCgICUgsBAJ8JAwJqCQIIbgT2/wIAAAD7BQEATQQFKAIAAABSBgMAvAQExwMAAACfBAMB+wUBAE0EBdQEAAAA2QYBABIAAgC8BATHAwAAAJ8EAwGCAgIABQMEAwEDBQMGAwcCAAEICAEYAAACAAAAAAQAAAAA/QAAAAAAAAAAAwAEAAAAAAAAAQAAAAAAAAAHDAAAAAAHAAABAgAcowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBAQAAAABAbwMEALwBARYDAAAAnwEDAqQCBgAAAFBATQYAEgcAAABNBQYcCAAAAE0EBRgJAAAATQMEOQoAAACfAgICwAMLABIAAgASAAEAggMCAAwDCQQAAABAAwoDCwMMAw0EAABQQAMOAw8DEAMRBgIBAgEAARgAAgAAAAAAAQAAAAAAAgAAAAAAAAAAAAACAAAZAQAAAAADhwIWGs+8a0m1xnyOKq+MakId0nYdWWMme93fVbIFEMoy8oItxXuI8g==

local v1 = game:GetService("ReplicatedStorage")
local u2 = game:GetService("Players")
local u3 = require(v1.Shared.Framework.Classes.Bucket)
return function(u4, u5) --[[Function name: CreatePlayerBuckets, line 8]]
    --[[
    Upvalues:
        [1] = u3
        [2] = u2
    --]]
    local u6 = {}
    local function v8(p7) --[[Anonymous function at line 14]]
        --[[
        Upvalues:
            [1] = u6
            [2] = u3
            [3] = u4
            [4] = u5
        --]]
        u6[p7] = u3.new(u4(p7), u5)
    end
    for _, v9 in u2:GetPlayers() do
        u6[v9] = u3.new(u4(v9), u5)
    end
    u2.PlayerAdded:Connect(v8)
    u2.PlayerRemoving:Connect(function(p10) --[[Anonymous function at line 23]]
        --[[
        Upvalues:
            [1] = u6
        --]]
        if u6[p10] then
            u6[p10]:Destroy()
            u6[p10] = nil
        end
    end)
    return u6
end