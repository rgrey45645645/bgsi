--devbgascension

-- Bytecode (Base64):
-- BgMfE0Fic29sdXRlQ29udGVudFNpemUBWQVTY2FsZQpQYWRkaW5nVG9wBk9mZnNldA1QYWRkaW5nQm90dG9tBVVEaW0yCmZyb21PZmZzZXQEbWF0aARjZWlsCkNhbnZhc1NpemUGdXBkYXRlCkRpc2Nvbm5lY3QGUGFyZW50CVVJUGFkZGluZxZGaW5kRmlyc3RDaGlsZFdoaWNoSXNBGEdldFByb3BlcnR5Q2hhbmdlZFNpZ25hbAdDb25uZWN0BXRhYmxlBmluc2VydBJIb29rU2Nyb2xsaW5nRnJhbWUEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlDFR3ZWVuU2VydmljZQdyZXF1aXJlBkNsaWVudAlGcmFtZXdvcmsJVXRpbGl0aWVzA0d1aRNHZXRVSVNjYWxlQW5jZXN0b3JzAAQJAAQAAAAs+wIAAE0BAsYAAAAATQABeAEAAACMAQEA+wIBAMYDAADGBAAAZAIDAE0HBoQCAAAACQEBB24C/P8CAAAAjAIAAPsDAgAOAwwA+wUCAE0EBTEDAAAATQMEcAQAAABDAgID+wUCAE0EBewFAAAATQMEcAQAAABDAgID+wMDAKQECAAAHGCAjAUAAOwIAAG7BwgCpAcLAAAokICfBwICQwYHAp8EAwIwBAPPDAAAAIIAAQANAwEDAgMDAwQDBQMGAwcDCAQAHGCAAwkDCgQAKJCAAwsAGQwBGAAAAAAAAgEAAAABAAD/AAQBAAEAAAAAAAEAAAAAAAMAAAAAAAAAAAAAAAABGgAAAAAHAAEAAAAK+wAAAMYBAADGAgAAZAADALwFBBoAAAAAnwUCAW4A/P8CAAAAggABAAEDDQA2AAEYAAAAAAEAAP8AAzcAAAAAEAIBAAALBAABBQIHBwcECAJX/wIAAAAAAAD7AwAAUgQAAJ8DAgJNBAEkAAAAAG8GAQC8BARUAgAAAJ8EAwIrBAUAbwcBALwFAFQCAAAAnwUDAlIEBQDZBQAAEgABABIAAwASAQT/EgAAAA4EGgBSBwIAbwoDALwIBJQEAAAAnwgDAlIKBQC8CAjHBQAAAJ8IAwBMNAACpAYIAAAcYICfBgABUgcCAG8KCQC8CASUBAAAAJ8IAwJSCgUAvAgIxwUAAACfCAMATDQAAqQGCAAAHGCAnwYAAVIGAwDGBwAAxggAAGQGDQBSDAIAbw8KALwNCpQEAAAAnw0DAlIPBQC8DQ3HBQAAAJ8NAwBMNAACpAsIAAAcYICfCwABbgby/wIAAABSBwIAbwoLALwIAZQEAAAAnwgDAlIKBQC8CAjHBQAAAJ8IAwBMNAACpAYIAAAcYICfBgABUgYFAJ8GAQHZBgEAEgACAMEEAACCBgIADAMOAw8DEAMEAxEDEgMTAxQEABxggAMGAwMDAQIAAQ0VARgAAAIAAAEAAAAAAAEBAAAAAAMAAAAAEQEAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAwAAAAEAAAAAAAAAAAAAAAD/AAMAAAAAAAAAAAAAAAABAAMAAAARAAAAAAgAAAECAB2jAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIGAAAAUEBNBwBNBwAAAE0GBxwIAAAATQUGtQkAAABNBAUfCgAAAE0DBEoLAAAAnwICAsADDAASAAIAggMCAA0DFgQAAABAAxcDGAMZAxoEAABQQAMbAxwDHQMeAx8GAgECAQABGAACAAAAAAABAAAAAAACAAAAAAAAAAAAAAAABwAxAQAAAAADeL4SzeBsoYFKenhZJ9d/gl+k+GTJ5jG8XMITSfohGsANsn4F+AR7zQ==

local v1 = game:GetService("ReplicatedStorage")
game:GetService("TweenService")
local u2 = require(v1.Client.Framework.Utilities.Gui.GetUIScaleAncestors)
return function(u3, u4) --[[Function name: HookScrollingFrame, line 13]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local u5 = {}
    local u6 = u2(u3)
    local u7 = u4.Parent:FindFirstChildWhichIsA("UIPadding") or u3:FindFirstChildWhichIsA("UIPadding")
    local function v15() --[[Anonymous function at line 25]]
        --[[
        Upvalues:
            [1] = u4
            [2] = u6
            [3] = u7
            [4] = u3
        --]]
        local v8 = u4.AbsoluteContentSize.Y
        local v9 = 1
        for _, v10 in u6 do
            v9 = v9 * v10.Scale
        end
        local v11 = 0
        if u7 then
            v11 = v11 + u7.PaddingTop.Offset + u7.PaddingBottom.Offset
        end
        local v12 = u3
        local v13 = UDim2.fromOffset
        local v14 = v8 / v9
        v12.CanvasSize = v13(0, math.ceil(v14) + v11)
    end
    if u7 then
        local v16 = u7:GetPropertyChangedSignal("PaddingTop")
        table.insert(u5, v16:Connect(v15))
        local v17 = u7:GetPropertyChangedSignal("PaddingBottom")
        table.insert(u5, v17:Connect(v15))
    end
    for _, v18 in u6 do
        local v19 = v18:GetPropertyChangedSignal("Scale")
        table.insert(u5, v19:Connect(v15))
    end
    local v20 = u4:GetPropertyChangedSignal("AbsoluteContentSize")
    table.insert(u5, v20:Connect(v15))
    v15()
    return function() --[[Anonymous function at line 54]]
        --[[
        Upvalues:
            [1] = u5
        --]]
        for _, v21 in u5 do
            v21:Disconnect()
        end
    end
end