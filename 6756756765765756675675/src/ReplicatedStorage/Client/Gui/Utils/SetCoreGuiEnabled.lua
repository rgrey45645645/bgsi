--devbgascension

-- Bytecode (Base64):
-- BgMLEVNldENvcmVHdWlFbmFibGVkBGdhbWUKU3RhcnRlckd1aQRFbnVtC0NvcmVHdWlUeXBlBkhlYWx0aAhCYWNrcGFjawpQbGF5ZXJMaXN0BENoYXQIU2VsZlZpZXcKRW1vdGVzTWVudQACCgECAAAGAwAABQEBFfsBAADGAgAAxgMAAGQBDgArBQcA+wYBAFIIBACpCQAAvAYGGAAAAACfBgQBZQAGAPsGAQBSCAQAUgkAALwGBhgAAAAAnwYEAW4B8f8CAAAAggABAAEDAQAOAQEYAAAAAAEBAAAAAAAAAgAAAAAA/AAHDwAAAAAEAAABAgAjowAAAKQBAQAAAABATQABCwIAAAD/AQQAAAAAAKQCBgAFEDDAqQMAAGoDAQKkAggABxAwwKkDAABqAwECpAIKAAkQMMCpAwEAagMBAqQCDAALEDDAqQMBAGoDAQKkAg4ADRAwwKkDAQBqAwECpAIQAA8QMMCpAwEAagMBAsACEQASAAEAEgAAAIICAgASAwIEAAAAQAMDAwQDBQMGBAUQMMADBwQHEDDAAwgECRAwwAMJBAsQMMADCgQNEDDAAwsEDxAwwAYAAQABAAEYAAIAAAACAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAMAAA0BAAAAAAHBRn4kMAXlVvOCFLC8b/k9zjA8bunkV3W+ci1Vi5Q68rtSi4FI46WR

local u1 = game.StarterGui
local u2 = {
    [Enum.CoreGuiType.Health] = false,
    [Enum.CoreGuiType.Backpack] = false,
    [Enum.CoreGuiType.PlayerList] = true,
    [Enum.CoreGuiType.Chat] = true,
    [Enum.CoreGuiType.SelfView] = true,
    [Enum.CoreGuiType.EmotesMenu] = true
}
return function(p3) --[[Function name: SetCoreGuiEnabled, line 14]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u1
    --]]
    for v4, v5 in u2 do
        if v5 then
            u1:SetCoreGuiEnabled(v4, p3)
        else
            u1:SetCoreGuiEnabled(v4, false)
        end
    end
end