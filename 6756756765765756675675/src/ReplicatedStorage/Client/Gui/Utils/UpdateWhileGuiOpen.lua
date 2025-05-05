--devbgascension

-- Bytecode (Base64):
-- BgMOBklzT3BlbhJDb25uZWN0RGF0YUNoYW5nZWQMQmluZE9uT3BlbmVkElVwZGF0ZVdoaWxlR3VpT3BlbgRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZDbGllbnQJRnJhbWV3b3JrCFNlcnZpY2VzCUxvY2FsRGF0YQNHdWkIR3VpRnJhbWUAAwMAAwAAAAn7AAAA+wIBALwAADEAAAAAnwADAg4AAgD7AAIAnwABAYIAAQABAwEADQABGAAAAAAAAAEAAg4AAAAABwMCAAAIBQAABQMDDwUQ+wMAAFIFAQDZBgAAEgIBABIAAAASAAIAvAMDKAAAAACfAwQB+wMBAFIFAABSBgIAvAMDqgEAAACfAwQBggABAAIDAgMDAQAIBAEYAAAAAAAAAAAABQAAAAAAAQ0AAAAABgAAAQIAH6MAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQUAAABAQE0FAE0GAAAATQQFHAcAAABNAwRDCAAAAE0CA2gJAAAAnwECAqQCBQAAAEBATQUATQYAAABNBAUfCgAAAE0DBJULAAAAnwICAsADDAASAAEAEgACAIIDAgANAwUEAAAAQAMGAwcDCAQAAEBAAwkDCgMLAwwDDQMOBgEBAQEAARgAAgAAAAAAAgAAAAAAAAAAAAABAAAAAAAAAAACAAAOAQAAAAACLf40Hz8cfbgfOl6LfuNs1pi6txv0ab9Mh8L63S8AZHITdg8pu+BdFA==

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Client.Framework.Services.LocalData)
local u3 = require(v1.Client.Gui.GuiFrame)
return function(u4, p5, u6) --[[Function name: UpdateWhileGuiOpen, line 8]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
    --]]
    u2:ConnectDataChanged(p5, function() --[[Anonymous function at line 13]]
        --[[
        Upvalues:
            [1] = u3
            [2] = u4
            [3] = u6
        --]]
        if u3:IsOpen(u4) then
            u6()
        end
    end)
    u3:BindOnOpened(u4, u6)
end