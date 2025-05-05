--devbgascension

-- Bytecode (Base64):
-- BgMfB0Rlc3Ryb3kHRW5hYmxlZAZGb2xkZXIDSXNBC0dldENoaWxkcmVuCEluc3RhbmNlA25ldwRQYXJ0CEFuY2hvcmVkCkNhbkNvbGxpZGUEU2l6ZQxUcmFuc3BhcmVuY3kGQ0ZyYW1lCXdvcmtzcGFjZQhSZW5kZXJlZAdHZW5lcmljBlBhcmVudApBdHRhY2htZW50BUNsb25lBEVtaXQEdGFzawVkZWxheQhMaWZldGltZQNNYXgWRW1pdFBhcnRpY2xlQXRQb3NpdGlvbgRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZDbGllbnQJTG93RGV0YWlsAAMCAAEAAAAF+wAAALwAAFAAAAAAnwACAYIAAQABAwEAJgABGAAAAAABJwAAAAAMAwIAAAgFAAAFAwgHglD7BAAATQME8AAAAAAOAwEAggABAG8FAQC8AwH+AgAAAJ8DAwIOAwwAvAMBaAMAAACfAwIEZAMFAPsIAQBSCQAAUgoHAFILAgCfCAQBbgP6/wIAAACCAAEApAMGAAAUQIBvBAcAnwMCAqkEAQAwBANFCAAAAKkEAAAwBAPTCQAAAG8ECgAwBAMvCwAAAIwEAQAwBAPZDAAAAKQEDgAAFNCAUgUAAJ8EAgIwBAOFDQAAAKQGEAAAAPBATQUG+xEAAABNBAX5EgAAADAEAyQTAAAApAQGAAAUQIBvBRQAnwQCAjADBCQTAAAAvAUBOhUAAACfBQICqQYAADAGBfAAAAAAMAQFJBMAAABSCAIAvAYFVhYAAACfBgMBpAYZAABgcIFNCAXLGgAAAE0HCLQbAAAA2QgAABIAAwCfBgMBggABABwDAgMDAwQDBQMGAwcEABRAgAMIAwkDCgcAAIA/AACAPwAAgD8AAAAAAwsDDAMNBAAU0IADDgQAAPBAAw8DEAMRAxIDEwMUAxUDFgQAYHCBAxcDGAEABxkBGAAAAAABAgAAAAABAAAAAQAAAAD/AAMDAAAAAQAAAQAAAQAAAQAAAQAAAAAAAQAAAAAAAAACAAAAAQACAAABAAABAAEAAAACAAAAAAAAAAADDAAAAAAEAAABAgASowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQMATQYAAABNAgOTBwAAAJ8BAgLAAggAEgABABIAAgCCAgIACQMaBAAAAEADGwMcAx0EAABAQAMeAx8GAQEBAQABGAACAAAAAAACAAAAAAAAAgAAJQEAAAAAAtIq+FRNL5EG4O6SwFVeKQ80HNNQKmTskl8JIVzyG5oygSaH5F0PCTQ=

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Client.LowDetail)
local function u10(p3, p4, p5) --[[Anonymous function at line 7]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u10
    --]]
    if u2.Enabled then
        return
    elseif p4:IsA("Folder") then
        for _, v6 in p4:GetChildren() do
            u10(p3, v6, p5)
        end
    else
        local u7 = Instance.new("Part")
        u7.Anchored = true
        u7.CanCollide = false
        u7.Size = Vector3.new(1, 1, 1)
        u7.Transparency = 1
        u7.CFrame = CFrame.new(p3)
        u7.Parent = workspace.Rendered.Generic
        local v8 = Instance.new("Attachment")
        v8.Parent = u7
        local v9 = p4:Clone()
        v9.Enabled = false
        v9.Parent = v8
        v9:Emit(p5)
        task.delay(v9.Lifetime.Max, function() --[[Anonymous function at line 38]]
            --[[
            Upvalues:
                [1] = u7
            --]]
            u7:Destroy()
        end)
    end
end
return u10