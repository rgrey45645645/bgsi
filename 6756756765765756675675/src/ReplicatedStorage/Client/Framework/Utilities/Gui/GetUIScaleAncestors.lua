--devbgascension

-- Bytecode (Base64):
-- BgMLBlBhcmVudAdVSVNjYWxlFUZpbmRGaXJzdENoaWxkT2ZDbGFzcwV0YWJsZQZpbnNlcnQTR2V0VUlTY2FsZUFuY2VzdG9ycwRnYW1lB1BsYXllcnMKR2V0U2VydmljZQtMb2NhbFBsYXllcglQbGF5ZXJHdWkAAgcBAQAABgMAAAUBBxr/AQAAAAAAAE0CACQAAAAARwIUAAAAAAD7AwAA8QIRAAMAAABvBQEAvAMCuAIAAACfAwMCRwMIAAAAAACeNAEFAwAAAFIFAQBSBgMApAQFAAAQMICfBAMBTQICJAAAAABIAOv/ggECAAYDAQMCAwMDBAMFBAAQMIAACQYBGAAAAQABAAAAAAEAAAABAAEAAAAAAAACAPsHCgAAAAADAAABAgAOowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAk0CADEEAAAATQECmQUAAADAAgYAEgABAIICAgAHAwcEAAAAQAMIAwkDCgMLBgABAAEAARgAAQAAAAAAAQAAAAYADgEAAAAAAdyR5HyVHQmc7lWO6O2+oNm+tZn6gVklWOeyUS9fekORVqvtLKS5BWo=

local u1 = game:GetService("Players").LocalPlayer.PlayerGui
return function(p2) --[[Function name: GetUIScaleAncestors, line 9]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v3 = p2.Parent
    local v4 = {}
    while v3 ~= nil and v3 ~= u1 do
        local v5 = v3:FindFirstChildOfClass("UIScale")
        if v5 ~= nil then
            table.insert(v4, v5)
        end
        v3 = v3.Parent
    end
    return v4
end