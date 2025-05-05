--devbgascension

-- Bytecode (Base64):
-- BgMLCEdldFBpdm90DkdldERlc2NlbmRhbnRzCEJhc2VQYXJ0A0lzQQZDRnJhbWUNVG9PYmplY3RTcGFjZQNuZXcIUG9zaXRpb24IUm90YXRpb24EU2l6ZQpTY2FsZU1vZGVsAAIOAgAAAAcEAAAFAgcCJbwCAFIAAAAAnwICArwDAEcBAAAAnwMCBGQDGwBvCgIAvAgH/gMAAACfCAMCDggWAE0KB4UEAAAAvAgCRgUAAACfCAMCpAsHAAAYQIBNDQg7CAAAAAkMDQGfCwICCQoCC00LCDgJAAAACQkKCzAJB4UEAAAATQkHLwoAAAAJCQkBMAkHLwoAAABuA+T/AgAAAIIAAQALAwEDAgMDAwQDBQMGAwcEABhAgAMIAwkDCgADCwEYAAAAAwAAAAEAAAAAAQAAAAABAAAAAAAAAAAAAAABAAAAAPwACQQAAAAAAQAAAQIAA6MAAADAAAAAggACAAEGAAEAAQABGAACEQEAAAAAAZ4o5A0WVHg8rOyOmU4tCxbBriIyPluQgKv2ho3pVDTNaPpHFKYkRTU=

return function(p1, p2) --[[Function name: ScaleModel, line 3]]
    local v3 = p1:GetPivot()
    for _, v4 in p1:GetDescendants() do
        if v4:IsA("BasePart") then
            local v5 = v3:ToObjectSpace(v4.CFrame)
            v4.CFrame = v3 * CFrame.new(v5.Position * p2) * v5.Rotation
            v4.Size = v4.Size * p2
        end
    end
end