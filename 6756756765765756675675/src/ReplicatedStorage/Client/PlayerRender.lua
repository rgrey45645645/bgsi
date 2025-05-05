--devbgascension

-- Bytecode (Base64):
-- BgMcDkdldERlc2NlbmRhbnRzCEJhc2VQYXJ0A0lzQQVEZWNhbBRPcmlnaW5hbFRyYW5zcGFyZW5jeQxHZXRBdHRyaWJ1dGUMVHJhbnNwYXJlbmN5DFNldEF0dHJpYnV0ZQRGaXJlD1BhcnRpY2xlRW1pdHRlcgxCaWxsYm9hcmRHdWkHRW5hYmxlZApzZXRWaXNpYmxlCkdldFBsYXllcnMJQ2hhcmFjdGVyB1Zpc2libGURU2V0UGxheWVyc1Zpc2libGUOQ2hhcmFjdGVyQWRkZWQHQ29ubmVjdARXYWl0Ckhvb2tQbGF5ZXIEZ2FtZQdQbGF5ZXJzCkdldFNlcnZpY2ULTG9jYWxQbGF5ZXIEdGFzawVzcGF3bgtQbGF5ZXJBZGRlZAAFDAIAAAAHBAAABQKHATcrAAEAggABALwCAEcAAAAAnwICBGQCLgBvCQEAvAcG/gIAAACfBwMCKwcFAG8JAwC8Bwb+AgAAAJ8HAwIOBxMAbwkEALwHBhIFAAAAnwcDAisHBwBNBwbZBgAAAG8KBABSCwcAvAgGLgcAAACfCAQBDgECAFIIBwArCAEAjAgBADAIBtkGAAAAZQARAG8JCAC8Bwb+AgAAAJ8HAwIrBwoAbwkJALwHBv4CAAAAnwcDAisHBQBvCQoAvAcG/gIAAACfBwMCDgcCADABBvALAAAAbgLR/wIAAACCAAEADAMBAwIDAwMEAwUDBgMHAwgDCQMKAwsDDAAPDQEYAAECAAAAAQAAAAAAAAAAAAEAAAABAQABAAAAAAIAAAAAAAABAAAAAAAAAAAAAAAAAAABAPcADBAAAAAACwMDAAAAFvsDAAC8AwOrAAAAAJ8DAgRkAwwATQgHaQEAAAAOCAkAKwIDAPsIAQDxCAYABwAAAPsIAgBNCQdpAQAAAFIKAQCfCAMBbgPz/wIAAAAwAQCAAgAAAIIAAQADAw4DDwMQACIRARgAAAAAAAEAAAEAAAADAAAAAPsACQABIwAAAAAFAQMAAAAJ+wEAAPsDAQBNAgNpAAAAAPsEAgBNAwSAAQAAAJ8BAwGCAAEAAgMPAxAANAABGAAAAAAAAAAAATUAAAAABQEDAAAGAwAABQEHGvsBAACaAAIAAQAAAIIAAQBNAQCXAAAAANkDAAASAgEAEgAAABICAgC8AQHHAQAAAJ8BAwFNAQCXAAAAALwBAfcCAAAAnwECAfsBAQBNAgBpAwAAAPsEAgBNAwSABAAAAJ8BAwGCAAEABQMSAxMDFAMPAxABAjAVARgAAAABAgAAAAAAAAAAAwAAAAABAAAAAAAAATEAAAAADQAAAQAAKqMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwJNAQAxBAAAAOICBgCpAwEAMAMCgAUAAADAAwcAwAQIABIAAAASAAEAEgADADAEAqMJAAAAwAQKABIAAQASAAMAEgACALwFAKsLAAAAnwUCBGQFBQCkCg4AADTAgFILBABSDAkAnwoDAW4F+v8CAAAATQUAKA8AAABSBwQAvAUFxxAAAACfBQMBggICABEDFgQAAABAAxcDGAMZAxAFAQUGAAYBAxEGAwMOAxoDGwQANMCAAxwDEwMAAQMBAAEYAAEAAAAAAAEABwEAAAQTAAAAAAAOAAAADAAAAAEAAAAA/wAFAAAAAAADAQAAAAAEpQ8USAACkpKXy37cYYIWPfd6IsWOUs59O7WSaAdPH3f83dwggDeDbA==

local u1 = game:GetService("Players")
local u2 = u1.LocalPlayer
local u3 = {
    ["Visible"] = true
}
local function u8(p4, p5) --[[Anonymous function at line 15]]
    if p4 then
        for _, v6 in p4:GetDescendants() do
            if v6:IsA("BasePart") or v6:IsA("Decal") then
                local v7 = v6:GetAttribute("OriginalTransparency")
                if not v7 then
                    v7 = v6.Transparency
                    v6:SetAttribute("OriginalTransparency", v7)
                end
                v6.Transparency = p5 and v7 and v7 or 1
            elseif v6:IsA("Fire") or (v6:IsA("ParticleEmitter") or v6:IsA("BillboardGui")) then
                v6.Enabled = p5
            end
        end
    end
end
function u3.SetPlayersVisible(p9, p10, p11) --[[Anonymous function at line 34]]
    --[[
    Upvalues:
        [1] = u1
        [2] = u2
        [3] = u8
    --]]
    for _, v12 in u1:GetPlayers() do
        if v12.Character and (p11 or u2 ~= v12) then
            u8(v12.Character, p10)
        end
    end
    p9.Visible = p10
end
local function v14(u13) --[[Anonymous function at line 48]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u8
        [3] = u3
    --]]
    if u13 ~= u2 then
        u13.CharacterAdded:Connect(function(_) --[[Anonymous function at line 52]]
            --[[
            Upvalues:
                [1] = u8
                [2] = u13
                [3] = u3
            --]]
            u8(u13.Character, u3.Visible)
        end)
        u13.CharacterAdded:Wait()
        u8(u13.Character, u3.Visible)
    end
end
for _, v15 in u1:GetPlayers() do
    task.spawn(v14, v15)
end
u1.PlayerAdded:Connect(v14)
return u3