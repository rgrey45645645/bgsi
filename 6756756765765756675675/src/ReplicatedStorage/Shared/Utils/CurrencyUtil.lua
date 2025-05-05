--devbgascension

-- Bytecode (Base64):
-- BgMgBlBvaW50cwVTdGFycw9DaGFsbGVuZ2VQb2ludHMQQ29tcGV0aXRpdmVTY29yZQV0YWJsZQZpbnNlcnQGU2Vhc29uDERhaWx5UmV3YXJkcw1DaGFsbGVuZ2VQYXNzC0NvbXBldGl0aXZlC0dldERhdGFLZXlzBFR5cGUIQ3VycmVuY3kGQW1vdW50DkdldE93bmVkQW1vdW50CkdldEJhbGFuY2UEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB3JlcXVpcmUGU2hhcmVkBERhdGEFVHlwZXMFVXRpbHMFU3RhdHMISXRlbVV0aWwFVGVhbXMNVGVhbXNFcXVpcHBlZApHYW1lcGFzc2VzDUFjdGl2ZVBvdGlvbnMLQWN0aXZlQnVmZnMWQ3VycmVuY3lNdWx0VXBkYXRlS2V5cwADCgEBAAAANP8BAAAAAAAA+wIAAMYDAADGBAAAZAIPAPAFDgAAAAAA8AUMAAEAAADwBQoAAgAAAPAFCAADAAAAnjQBBQUAAABSCAEAUgkFAKQHBgAAFECAnwcDAW4C8P8BAAAAgTQBBQcAAABSAwEAbwQHAKQCBgAAFECAnwIDAYE0AQUIAAAAUgMBAG8ECACkAgYAABRAgJ8CAwGBNAEFCQAAAFIDAQBvBAkApAIGAAAUQICfAgMBgTQBBQoAAABSAwEAbwQKAKQCBgAAFECAnwIDAYIBAgALAwEDAgMDAwQDBQMGBAAUQIADBwMIAwkDCgATCwEYAAACAAAAAQAAAAAAAAABAAAAAAAA/gAGAAAAAAAAAQAAAAAAAAEAAAAAAAABAAAAAAAAAhQAAAAACAMBAAAAD/sDAABSBQEA4gYDAG8HAQAwBwYRAAAAADACBgkBAAAAjAcAADAHBisCAAAAvAMD7wQAAACfAwQAggMAAAUDDAMNAw4FAwABAgMPACQQARgAAAABAAABAAEAAP0AAAAlAAAAAAsAAAECADijAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNBAASBgAAAE0DBMYHAAAATQIDCQgAAACfAQICpAIFAAAAQEBNBAASBgAAAE0DBO8JAAAAnwICAqQDBQAAAEBATQcAEgYAAABNBgehCgAAAE0FBiELAAAATQQF0AwAAACfAwIC/wQDAAAAAAD/BQAABQAAAG8GDQBvBw4AbwgPAG8JEABvChEAxQUGBgEAAAAwBQQmEgAAAMAFEwASAAEAMAUEXxQAAADABRUAEgADADAFBLwWAAAAggQCABcDEQQAAABAAxIDEwMUBAAAQEADFQMWAw0DFwMYAxkDGgMbAxwDHQMeAx8DIAYAAwsGAQMQAgABAQABGAACAAAAAAACAAAAAAAAAAABAAAAAAAAAQAAAAAAAAAAAAADAAEAAQEBAQEAAPsACAAAABEAAAAIAQAAAAACiWhsavmkP627rAb+vTAR80a7El1E7pVu77pTLCkZxziiFAwdidsBDA==

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Data.Currency)
require(v1.Shared.Types)
local u3 = require(v1.Shared.Utils.Stats.ItemUtil)
return {
    ["CurrencyMultUpdateKeys"] = {
        "Teams",
        "TeamsEquipped",
        "Gamepasses",
        "ActivePotions",
        "ActiveBuffs"
    },
    ["GetDataKeys"] = function(_) --[[Function name: GetDataKeys, line 19]]
        --[[
        Upvalues:
            [1] = u2
        --]]
        local v4 = {}
        for v5 in u2 do
            if v5 ~= "Points" and (v5 ~= "Stars" and (v5 ~= "ChallengePoints" and v5 ~= "CompetitiveScore")) then
                table.insert(v4, v5)
            end
        end
        table.insert(v4, "Season")
        table.insert(v4, "DailyRewards")
        table.insert(v4, "ChallengePass")
        table.insert(v4, "Competitive")
        return v4
    end,
    ["GetBalance"] = function(_, p6, p7) --[[Function name: GetBalance, line 36]]
        --[[
        Upvalues:
            [1] = u3
        --]]
        return u3:GetOwnedAmount(p6, {
            ["Type"] = "Currency",
            ["Currency"] = p7,
            ["Amount"] = 0
        })
    end
}