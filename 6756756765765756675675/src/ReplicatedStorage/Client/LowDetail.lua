--devbgascension

-- Bytecode (Base64):
-- BgMUD0xvdyBEZXRhaWwgTW9kZQhTZXR0aW5ncwdFbmFibGVkB0NoYW5nZWQERmlyZQRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UKUnVuU2VydmljZQdyZXF1aXJlBlNoYXJlZAlGcmFtZXdvcmsHQ2xhc3NlcwZTaWduYWwDbmV3CElzQ2xpZW50BkNsaWVudAhTZXJ2aWNlcwlMb2NhbERhdGESQ29ubmVjdERhdGFDaGFuZ2VkAAIFAQEAAAAUTQIAygEAAABNAQISAAAAAPsDAABNAgPwAgAAAPECCwABAAAA+wIAADABAvACAAAA+wMAAE0CA4UDAAAAUgQBALwCAt0EAAAAnwIDAYIAAQAFAwEDAgMDAwQDBQAWAAEYAAAAAAEAAAAAAQAAAQAAAAAAAAIXAAAAAAkAAAECADejAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIGAAAAUEBNBgASBwAAAE0FBhwIAAAATQQFGAkAAABNAwQfCgAAAJ8CAgLiAw0AqQQAADAEA/ALAAAATQQC7w4AAACfBAECMAQDhQwAAAC8BAEEDwAAAJ8EAgIOBBEApAQGAAAAUEBNCABNEAAAAE0HCBwIAAAATQYHQxEAAABNBQZoEgAAAJ8EAgJvBxMAwAgUABIAAwC8BQQoFQAAAJ8FBAGCAwIAFgMGBAAAAEADBwMIAwkDCgQAAFBAAwsDDAMNAw4DAwMEBQILDAMPAxADEQMSAxMDAgYAAxQBAAEAARgAAgAAAAAAAQAAAAAAAgAAAAAAAAAAAAAIAQAAAQAAAAAEAAAAAQAAAAAAAAAAAAABAAAAAAALAQAAAAABsHhGrcgyOHmCvCw5VOfujl6A0WCwIlxCr/DjTUBAoIg1weGZ1aLiWA==

local v1 = game:GetService("ReplicatedStorage")
local v2 = game:GetService("RunService")
local u3 = {
    ["Enabled"] = false,
    ["Changed"] = require(v1.Shared.Framework.Classes.Signal).new()
}
if v2:IsClient() then
    require(v1.Client.Framework.Services.LocalData):ConnectDataChanged("Settings", function(p4) --[[Anonymous function at line 22]]
        --[[
        Upvalues:
            [1] = u3
        --]]
        local v5 = p4.Settings["Low Detail Mode"]
        if u3.Enabled ~= v5 then
            u3.Enabled = v5
            u3.Changed:Fire(v5)
        end
    end)
end
return u3