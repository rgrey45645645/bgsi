--devbgascension

-- Bytecode (Base64):
-- BgMRA25vdwRtYXRoA21heA5mb3JtYXRSZWFsVGltZQRUZXh0CmZvcm1hdFRpbWUFVGltZXIEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB3JlcXVpcmUGU2hhcmVkCUZyYW1ld29yawlVdGlsaXRpZXMFZXZlcnkETWF0aARUaW1lAAMGAAQAAAAgjAEAAPsDAAD7BQEATQQFmgAAAACfBAECJgIDBJ4SAQMCAAAApAADAAAIEICfAAMC+wECAA4BCQD7AQMA+wMBAE0CA4IEAAAAUgMAAJ8CAgIwAgH1BQAAAIIAAQD7AQMA+wMBAE0CA9kGAAAAUgMAAJ8CAgIwAgH1BQAAAIIAAQAHAwEDAgMDBAAIEIADBAMFAwYACQABGAAAAAAAAAAAAAAAAAEAAQAAAAAAAAAAAgAAAAAAAAACCgAAAAAGAwIAAAgFAAAFAwcCDwn7AwAAbwQAANkFAAASAAEAEgIBABIAAgASAAAAnwMDAIIDAAABAgAAAAAAAOA/AQAIBwEYAAAAAAAAAAAACQAAAAAIAAABAgAjowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQUAEgYAAABNBAUcBwAAAE0DBLUIAAAATQIDxAkAAACfAQICpAIFAAAAQEBNBwASBgAAAE0GBxwHAAAATQUGtQgAAABNBAWMCgAAAE0DBEoLAAAAnwICAsADDAASAAEAEgACAIIDAgANAwgEAAAAQAMJAwoDCwQAAEBAAwwDDQMOAw8DEAMRBgEBAQEAARgAAgAAAAAAAgAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAgAADAEAAAAAAglpTVSAhRdQO60nwB6wndkq9DACI/S4wEr9qcc0ONkDMdVub5K7/zw=

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.Utilities.every)
local u3 = require(v1.Shared.Framework.Utilities.Math.Time)
return function(u4, u5, u6) --[[Function name: Timer, line 8]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
    --]]
    return u2(0.5, function() --[[Anonymous function at line 9]]
        --[[
        Upvalues:
            [1] = u5
            [2] = u3
            [3] = u6
            [4] = u4
        --]]
        local v7 = u5 - u3.now()
        local v8 = math.max(0, v7)
        if u6 then
            u4.Text = u3.formatRealTime(v8)
        else
            u4.Text = u3.formatTime(v8)
        end
    end)
end