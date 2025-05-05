--devbgascension

-- Bytecode (Base64):
-- BgMbDkdldERlc2NlbmRhbnRzCEJhc2VQYXJ0A0lzQQVEZWNhbBRPcmlnaW5hbFRyYW5zcGFyZW5jeQxHZXRBdHRyaWJ1dGUMVHJhbnNwYXJlbmN5DFNldEF0dHJpYnV0ZQRGaXJlD1BhcnRpY2xlRW1pdHRlcgdFbmFibGVkCnNldFZpc2libGUKR2V0UGxheWVycwlDaGFyYWN0ZXIHVmlzaWJsZRFTZXRQbGF5ZXJzVmlzaWJsZQ5DaGFyYWN0ZXJBZGRlZAdDb25uZWN0BFdhaXQKSG9va1BsYXllcgRnYW1lB1BsYXllcnMKR2V0U2VydmljZQtMb2NhbFBsYXllcgR0YXNrBXNwYXduC1BsYXllckFkZGVkAAUMAgAAAAcEAAAFAocBMisAAQCCAAEAvAIARwAAAACfAgIEZAIpAG8JAQC8Bwb+AgAAAJ8HAwIrBwUAbwkDALwHBv4CAAAAnwcDAg4HEwBvCQQAvAcGEgUAAACfBwMCKwcHAE0HBtkGAAAAbwoEAFILBwC8CAYuBwAAAJ8IBAEOAQIAUggHACsIAQCMCAEAMAgG2QYAAABlAAwAbwkIALwHBv4CAAAAnwcDAisHBQBvCQkAvAcG/gIAAACfBwMCDgcCADABBvAKAAAAbgLW/wIAAACCAAEACwMBAwIDAwMEAwUDBgMHAwgDCQMKAwsAEAwBGAABAgAAAAEAAAAAAAAAAAABAAAAAQEAAQAAAAACAAAAAAAAAQAAAAAAAAAAAAEA9wAMEQAAAAALAwMAAAAW+wMAALwDA6sAAAAAnwMCBGQDDABNCAdpAQAAAA4ICQArAgMA+wgBAPEIBgAHAAAA+wgCAE0JB2kBAAAAUgoBAJ8IAwFuA/P/AgAAADABAIACAAAAggABAAMDDQMOAw8AIxABGAAAAAAAAQAAAQAAAAMAAAAA+wAKAAEkAAAAAAUBAwAAAAn7AQAA+wMBAE0CA2kAAAAA+wQCAE0DBIABAAAAnwEDAYIAAQACAw4DDwA2AAEYAAAAAAAAAAABNwAAAAAFAQMAAAYDAAAFAQca+wEAAJoAAgABAAAAggABAE0BAJcAAAAA2QMAABICAQASAAAAEgICALwBAccBAAAAnwEDAU0BAJcAAAAAvAEB9wIAAACfAQIB+wEBAE0CAGkDAAAA+wQCAE0DBIAEAAAAnwEDAYIAAQAFAxEDEgMTAw4DDwECMhQBGAAAAAECAAAAAAAAAAADAAAAAAEAAAAAAAABMwAAAAANAAABAAAqowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAk0BADEEAAAA4gIGAKkDAQAwAwKABQAAAMADBwDABAgAEgAAABIAAQASAAMAMAQCowkAAADABAoAEgABABIAAwASAAIAvAUAqwsAAACfBQIEZAUFAKQKDgAANMCAUgsEAFIMCQCfCgMBbgX6/wIAAABNBQAoDwAAAFIHBAC8BQXHEAAAAJ8FAwGCAgIAEQMVBAAAAEADFgMXAxgDDwUBBQYABgEDEAYDAw0DGQMaBAA0wIADGwMSAwABAwEAARgAAQAAAAAAAQAIAQAABBMAAAAAAA8AAAAMAAAAAQAAAAD/AAUAAAAAAAMBAAAAAAQrXFoO4yJu/xmYMJo/jql6HCstyaXQdcPA4ezsUurRzOatcEgSLRXk

local u1 = game:GetService("Players")
local u2 = u1.LocalPlayer
local u3 = {
    ["Visible"] = true
}
local function u8(p4, p5) --[[Anonymous function at line 16]]
    if p4 then
        for _, v6 in p4:GetDescendants() do
            if v6:IsA("BasePart") or v6:IsA("Decal") then
                local v7 = v6:GetAttribute("OriginalTransparency")
                if not v7 then
                    v7 = v6.Transparency
                    v6:SetAttribute("OriginalTransparency", v7)
                end
                v6.Transparency = p5 and v7 and v7 or 1
            elseif v6:IsA("Fire") or v6:IsA("ParticleEmitter") then
                v6.Enabled = p5
            end
        end
    end
end
function u3.SetPlayersVisible(p9, p10, p11) --[[Anonymous function at line 35]]
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
local function v14(u13) --[[Anonymous function at line 50]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u8
        [3] = u3
    --]]
    if u13 ~= u2 then
        u13.CharacterAdded:Connect(function(_) --[[Anonymous function at line 54]]
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