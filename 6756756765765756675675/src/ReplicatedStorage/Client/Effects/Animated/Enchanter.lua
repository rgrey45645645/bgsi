--devbgascension

-- Bytecode (Base64):
-- BgMZB0hleGFnb24GQ0ZyYW1lBkFuZ2xlcwRtYXRoA3JhZAZDaXJjbGUGdXBkYXRlB0Rlc3Ryb3kHY2xlYW51cAVDbG9uZQdQaXZvdFRvCXdvcmtzcGFjZQhSZW5kZXJlZAdHZW5lcmljBlBhcmVudAhBbmltYXRvcgRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UIVGhlIFZvaWQNVGhlIE92ZXJ3b3JsZAZXb3JsZHMHSXNsYW5kcwZJc2xhbmQJRW5jaGFudGVyAAQKAQQAAAYDAAAFAQIz+wIAAE0BAuQAAAAA+wMBAKQEAwAACBCA+wcCAFsGBwS7FgYCpAUHAAAYUICfBQIC+wgCAFsHCAi7FgcCpAYHAAAYUICfBgIC+wkCAFsICQm7FggCpAcHAAAYUICfBwICnwQEAgkCAwQwAgGFAQAAAPsCAABNAQJwCgAAAPsDAwCkBAMAAAgQgIwFAAD7CQIAOQgJAFsHCAS7FgcCpAYHAAAYUICfBgICjAcAAJ8EBAIJAgMEMAIBhQEAAAD7AQIAQwEBAN4BAgCCAAEACwMBAwIDAwQACBCAAgAAAAAAgFZAAwQDBQQAGFCAAgAAAAAAADTAAgAAAAAAgEZAAwYAFgcBGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAQAAARcAAAAAAgABAAAABfsAAAC8AABQAAAAAJ8AAgGCAAEAAQMIABwJARgAAAAAAR0AAAAACAEBAAAGAwAABQEHJ/sBAAC8AQE6AAAAAJ8BAgJSBAAAvAIBwgEAAACfAgMBpAQDAAAAIEBNAwT7BAAAAE0CA/kFAAAAMAIBJAYAAABNAwHkBwAAAE0CA4UIAAAATQQBcAkAAABNAwSFCAAAAIwEAADZBQAAEgABABIAAgASAQT/EgADANkGAQASAAEA4gcMADAFB8YKAAAAMAYHkQsAAADBBAAAggcCAA0DCgMLAwwEAAAgQAMNAw4DDwMBAwIDBgMHAwkFAgoLAgABDRABGAAAAAABAAAAAQAAAAAAAAACAAAAAQAAAAIBAAAAAAYABAEAAQAAAA4AAAAACAAAAQIAG6MAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkBwcAAABgQE0GB9gIAAAATQUGOwUAAABNBAUnCQAAAE0DBNUEAAAATQIDuQoAAABNAQK9CwAAAMYCAAAwAgEkDAAAAMACDQASAAEAggICAA4DEQQAAABAAxIDEwMUAxUDDAQAAGBAAxYDFwMYAxkDDwYCAQIBAAEYAAIAAAAAAAcAAAAAAAAAAAAAAAAAAQAAAgAaAQAAAAAD5mvRy5DzVYLUr7tfa70hOe3+uH4dp8mednpAMnxhzDRakfmc7m4xgA==

game:GetService("ReplicatedStorage")
local u1 = workspace.Worlds["The Overworld"].Islands["The Void"].Island.Enchanter
u1.Parent = nil
return function(p2) --[[Function name: Animator, line 13]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local u3 = u1:Clone()
    u3:PivotTo(p2)
    u3.Parent = workspace.Rendered.Generic
    local u4 = u3.Hexagon.CFrame
    local u5 = u3.Circle.CFrame
    local u6 = 0
    return {
        ["update"] = function(p7) --[[Function name: update, line 22]]
            --[[
            Upvalues:
                [1] = u3
                [2] = u4
                [3] = u6
                [4] = u5
            --]]
            local v8 = u3.Hexagon
            local v9 = u4
            local v10 = CFrame.Angles
            local v11 = u6 * 90
            local v12 = math.rad(v11)
            local v13 = u6 * -20
            local v14 = math.rad(v13)
            local v15 = u6 * 45
            v8.CFrame = v9 * v10(v12, v14, (math.rad(v15)))
            local v16 = u3.Circle
            local v17 = u5
            local v18 = CFrame.Angles
            local v19 = -u6 * 90
            v16.CFrame = v17 * v18(0, math.rad(v19), 0)
            u6 = u6 + p7
        end,
        ["cleanup"] = function() --[[Function name: cleanup, line 28]]
            --[[
            Upvalues:
                [1] = u3
            --]]
            u3:Destroy()
        end
    }
end