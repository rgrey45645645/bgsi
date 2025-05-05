--devbgascension

-- Bytecode (Base64):
-- BgMjCVJlc3RhcnRBdA5HcmlkRGltZW5zaW9ucwhSZWN0U2l6ZQNSb3cGQ29sdW1uB1ZlY3RvcjIDbmV3DUltYWdlUmVjdFNpemUEemVybw9JbWFnZVJlY3RPZmZzZXQIX29iamVjdHMEUmF0ZQVGcmFtZQdDb3VudGVyC1RvdGFsRnJhbWVzBEdyaWQDRnBzA0FkZAZSZW1vdmUHRW5hYmxlZARnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UKUnVuU2VydmljZQdyZXF1aXJlBlNoYXJlZAlGcmFtZXdvcmsJVXRpbGl0aWVzBWV2ZXJ5BkNsaWVudAlMb3dEZXRhaWwISW5zdGFuY2UKSW1hZ2VMYWJlbAlIZWFydGJlYXQHQ29ubmVjdAAECwMAAAAIBQAABQMEBwQzTQMC0gAAAABNBAKIAQAAAE0GAp0CAAAA7AUGBA4DCQBNCQO+BAAAAHgICQMJBwgETQkDPAUAAAB4CAkDQwYHCGUAAQAJBgQEpAcIAAAcYIBSCAUAUgkFAJ8HAwIwBwHrCQAAAKQHCwAAKGCAMAcB+QwAAABNBwDUDQAAAOIIEwBNCgIXFAAAANgJAwowCQj2DgAAAIwJAAAwCQidDwAAAIwJAAAwCQhvEAAAADAGCAMRAAAAMAQIBxIAAAAwBQidAgAAAGoIBwGCAAEAFQMBAwIDAwIAAAAAAADwPwMEAwUDBgMHBAAcYIADCAMJBAAoYIADCgMLAwwDDQMOAw8DEAUGDg8QERICAxEAIhIBGAAAAQABAAACAQAAAAAAAAAAAQIAAAAAAAABAAAAAgAAAQAAAAABAAABAAABAAEAAQD6CCMAAAAABAIAAAAHBAAABQIEBwVNAgDUAAAAAMYDAABqAwIBggABAAEDCwA4EwEYAAAAAAE5AAAAAAsBAgAAADv7AgAATQEC8AAAAAAOAQEAggABAPsEAQBNAQTUAQAAAMYCAADGAwAAZAEtAE0GBW8CAAAAQwYGADAGBW8CAAAATQYFbwIAAABNBwX2AwAAALcGIwAHAAAAjAYAADAGBW8CAAAATQgFnQUAAACVBwgETQgFAwYAAADPBgcIMAYFnQUAAABNCAWdBQAAAE0JBQcHAAAAzwcICU0IBZ0IAAAACQYHCE0JBZ0FAAAATQoFBwcAAADTCAkKTQkFnQgAAAAJBwgJpAgLAAAokIBSCQYAUgoHAJ8IAwIwCAT5DAAAAG4B0v8CAAAAggABAA0DFAMLAw4DDAIAAAAAAADwPwMNAw8DEAMDAwYDBwQAKJCAAwoAPAABGAAAAAABAwAAAAAAAQAAAAACAAAAAAAEAAABAAAAAAAAAAIAAAAAAAAAAQAAAAAAAAACAAAAAAAA8wAPPQAAAAAJAAABAgA3owAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBAQAAAABAbwMEALwBARYDAAAAnwEDAqQCBgAAAFBATQYAEgcAAABNBQYcCAAAAE0EBbUJAAAATQMExAoAAACfAgICpAMGAAAAUEBNBQBNCwAAAE0EBZMMAAAAnwMCAqQEDwAAONCAbwUQAJ8EAgLiBRIA/wYAAAAAAAAwBgXUEQAAAMAGEwAwBgVfFAAAAMAGFQAwBgVpFgAAAE0GAf0XAAAAwAgYABIAAwASAAUAvAYGxxkAAACfBgMBggUCABoDFQQAAABAAxYDFwMYAxkEAABQQAMaAxsDHAMdAx4DHwMgAwcEADjQgAMhAwsFAREGAAMSBgEDEwMiBgIDIwMAAQIBAAEYAAIAAAAAAAEAAAAAAAIAAAAAAAAAAAAAAQAAAAAAAAIAAAAVAQAAAAMAABYAAAQAAAAAAAAAFgEAAAAAAyui+b4qNs87GWaTKj/2NpDwzyjIeO51yzIJU0QOnsQq3IBW9uwcdcA=

local v1 = game:GetService("ReplicatedStorage")
local v2 = game:GetService("RunService")
require(v1.Shared.Framework.Utilities.every)
local u3 = require(v1.Client.LowDetail)
Instance.new("ImageLabel")
local u13 = {
    ["_objects"] = {},
    ["Add"] = function(p4, p5, p6) --[[Function name: Add, line 34]]
        local v7 = p6.RestartAt
        local v8 = p6.GridDimensions
        local v9 = p6.RectSize / v8
        local v10
        if v7 then
            v10 = (v7.Row - 1) * v8 + (v7.Column - 1)
        else
            v10 = v8 * v8
        end
        p5.ImageRectSize = Vector2.new(v9, v9)
        p5.ImageRectOffset = Vector2.zero
        p4._objects[p5] = {
            ["Rate"] = 1 / p6.Fps,
            ["Frame"] = 0,
            ["Counter"] = 0,
            ["TotalFrames"] = v10,
            ["Grid"] = v8,
            ["RectSize"] = v9
        }
    end,
    ["Remove"] = function(p11, p12) --[[Function name: Remove, line 56]]
        p11._objects[p12] = nil
    end
}
v2.Heartbeat:Connect(function(p14) --[[Anonymous function at line 60]]
    --[[
    Upvalues:
        [1] = u3
        [2] = u13
    --]]
    if not u3.Enabled then
        for v15, v16 in u13._objects do
            v16.Counter = v16.Counter + p14
            if v16.Counter >= v16.Rate then
                v16.Counter = 0
                v16.Frame = (v16.Frame + 1) % v16.TotalFrames
                local v17 = v16.Frame % v16.Grid * v16.RectSize
                local v18 = v16.Frame // v16.Grid * v16.RectSize
                v15.ImageRectOffset = Vector2.new(v17, v18)
            end
        end
    end
end)
return u13