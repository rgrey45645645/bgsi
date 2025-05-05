--devbgascension

-- Bytecode (Base64):
-- BgMPCVBsYXllckd1aQ9TY3JlZW5HdWlIb2xkZXIORmluZEZpcnN0Q2hpbGQISW5zdGFuY2UDbmV3CVNjcmVlbkd1aQROYW1lDERpc3BsYXlPcmRlcgxSZXNldE9uU3Bhd24GUGFyZW50EkdldFNjcmVlbkd1aUhvbGRlcgRnYW1lB1BsYXllcnMKR2V0U2VydmljZQtMb2NhbFBsYXllcgACAwABAAAAHPsBAABNAAGZAAAAAG8CAQC8AAADAgAAAJ8AAwIrABMApAEFAAAQMIBvAgYAnwECAlIAAQBvAQEAMAEAugcAAACMAf//MAEAywgAAACpAQAAMAEApAkAAAD7AgAATQECmQAAAAAwAQAkCgAAAIIAAgALAwEDAgMDAwQDBQQAEDCAAwYDBwMIAwkDCgAJCwEYAAAAAAAAAAEBAAAAAAEAAAEAAAEAAAEAAAAAAgoAAAAAAwAAAQIADKMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwJNAQAxBAAAAMACBQASAAEAggICAAYDDAQAAABAAw0DDgMPBgABAAEAARgAAgAAAAAAAQAFAA0BAAAAAAGcd4NHkbwyAa6z6dMarkZadhfS9mMvFK3vf1rcgT/Jdy8SaUPiuaq4

local u1 = game:GetService("Players").LocalPlayer
return function() --[[Function name: GetScreenGuiHolder, line 9]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v2 = u1.PlayerGui:FindFirstChild("ScreenGuiHolder")
    if not v2 then
        v2 = Instance.new("ScreenGui")
        v2.Name = "ScreenGuiHolder"
        v2.DisplayOrder = -1
        v2.ResetOnSpawn = false
        v2.Parent = u1.PlayerGui
    end
    return v2
end