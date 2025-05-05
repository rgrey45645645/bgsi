--devbgascension

-- Bytecode (Base64):
-- BgMZDkdldERlc2NlbmRhbnRzCEJhc2VQYXJ0A0lzQQxUcmFuc3BhcmVuY3kNT3JpZ2luYWxDb2xvcgxHZXRBdHRyaWJ1dGUUT3JpZ2luYWxUcmFuc3BhcmVuY3kFQ29sb3IMU2V0QXR0cmlidXRlCE1lc2hQYXJ0D09yaWdpbmFsVGV4dHVyZQlUZXh0dXJlSUQACEFuY2hvcmVkCkNhbkNvbGxpZGUGQ29sb3IzA25ldwhGaWxlTWVzaAlUZXh0dXJlSWQKU3VyZmFjZUd1aQdFbmFibGVkD1BhcnRpY2xlRW1pdHRlcgVEZWNhbAdUZXh0dXJlEFNldE1vZGVsVW5sb2NrZWQAAg4CAAAABwQAAAUCBwGZAbwCAEcAAAAAnwICBGQCkgBvCQEAvAcG/gIAAACfBwMCDgdHAE0HBtkDAAAADQeKAAQAAABvCQUAvAcGEgYAAACfBwMCbwoHALwIBhIGAAAAnwgDAisHBwBNBwakCAAAAG8LBQBSDAcAvAkGLgkAAACfCQQBKwgHAE0IBtkDAAAAbwsHAFIMCAC8CQYuCQAAAJ8JBAFvCwoAvAkG/gIAAACfCQMCDgkSAG8LCwC8CQYSBgAAAJ8JAwIrCQcATQkGhAwAAABvDAsAUg0JALwKBi4JAAAAnwoEAQ4BAgBSCgkAKwoBAG8KDQAwCgaEDAAAAKkJAQAwCQZFDgAAADABBtMPAAAADgECAFIJBwArCQMApAkSAABEAIGfCQECMAkGpAgAAAAOAQIAUgkIACsJAQBvCRMAMAkG2QMAAABlAEYAbwkUALwHBv4CAAAAnwcDAg4HEwBvCQsAvAcGEgYAAACfBwMCKwcHAE0HBvcVAAAAbwoLAFILBwC8CAYuCQAAAJ8IBAEOAQIAUggHACsIAQBvCA0AMAgG9xUAAABlAC4AbwkWALwHBv4CAAAAnwcDAg4HAwAwAQbwFwAAAGUAJgBvCRgAvAcG/gIAAACfBwMCDgcDADABBvAXAAAAZQAeAG8JGQC8Bwb+AgAAAJ8HAwIrBwUAbwkaALwHBv4CAAAAnwcDAg4HFABvCQUAvAcGEgYAAACfBwMCKwcHAE0HBpoQAAAAbwoFAFILBwC8CAYuCQAAAJ8IBAEOAQIAUggHACsIAwCkCBIAAEQAgZ8IAQIwCAaaEAAAAG4Cbf8CAAAAggABABsDAQMCAwMDBAIAAAAAAADwPwMFAwYDBwMIAwkDCgMLAwwDDQMOAw8DEAMRBABEAIECmpmZmZmZuT8DEgMTAxQDFQMWAxcDGAAEGQEYAAAAAAEAAAAAAQAAAAQAAAABAAAAAQEAAQAAAAACAQABAAAAAAMAAAAAAQAAAAEBAAEAAAAAAgAAAAAAAwAAAQABAAAAAAAAAAEAAAAAAAACAAAAAAEAAAABAQABAAAAAAIAAAAAAAACAAAAAAEAAAIAAAAAAQAAAgAAAAAAAAAAAAEAAAABAQABAAAAAAIAAAAAAAAAzQA3BQAAAAABAAABAgADowAAAMAAAACCAAIAAQYAAQABAAEYAAM7AQAAAAABBRTgoY0Hfu030Io1BsjDRbnqeEkvNcP3HYhZZGR9ippH1dzLmruqMg==

return function(p1, p2) --[[Function name: SetModelUnlocked, line 4]]
    for _, v3 in p1:GetDescendants() do
        if v3:IsA("BasePart") then
            if v3.Transparency ~= 1 then
                local v4 = v3:GetAttribute("OriginalColor")
                local v5 = v3:GetAttribute("OriginalTransparency")
                if not v4 then
                    v4 = v3.Color
                    v3:SetAttribute("OriginalColor", v4)
                end
                if not v5 then
                    v5 = v3.Transparency
                    v3:SetAttribute("OriginalTransparency", v5)
                end
                if v3:IsA("MeshPart") then
                    local v6 = v3:GetAttribute("OriginalTexture")
                    if not v6 then
                        v6 = v3.TextureID
                        v3:SetAttribute("OriginalTexture", v6)
                    end
                    v3.TextureID = p2 and v6 and v6 or ""
                end
                v3.Anchored = true
                v3.CanCollide = p2
                v3.Color = p2 and v4 and v4 or Color3.new()
                v3.Transparency = p2 and v5 and v5 or 0.1
            end
        elseif v3:IsA("FileMesh") then
            local v7 = v3:GetAttribute("OriginalTexture")
            if not v7 then
                v7 = v3.TextureId
                v3:SetAttribute("OriginalTexture", v7)
            end
            v3.TextureId = p2 and v7 and v7 or ""
        elseif v3:IsA("SurfaceGui") then
            v3.Enabled = p2
        elseif v3:IsA("ParticleEmitter") then
            v3.Enabled = p2
        elseif v3:IsA("Decal") or v3:IsA("Texture") then
            local v8 = v3:GetAttribute("OriginalColor")
            if not v8 then
                v8 = v3.Color3
                v3:SetAttribute("OriginalColor", v8)
            end
            v3.Color3 = p2 and v8 and v8 or Color3.new()
        end
    end
end