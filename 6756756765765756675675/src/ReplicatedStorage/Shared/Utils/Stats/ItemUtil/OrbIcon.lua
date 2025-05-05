--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
game:GetService("TweenService")
require(v1.Shared.Types)
local u2 = require(v1.Shared.Utils.AnimateColor)
local u3 = require(v1.Shared.Data.Powerups)
local u4 = Instance.new("Frame")
u4.AnchorPoint = Vector2.one / 2
u4.Size = UDim2.fromScale(0.8, 0.8)
u4.Position = UDim2.fromScale(0.5, 0.5)
u4.BackgroundTransparency = 1
local v5 = Instance.new("ImageLabel")
v5.AnchorPoint = u4.AnchorPoint
v5.Size = UDim2.fromScale(1, 1)
v5.Position = UDim2.fromScale(0.5, 0.5)
v5.BackgroundTransparency = 1
v5.ZIndex = 2
v5.Name = "Label"
v5.Parent = u4
local v6 = v5:Clone()
v6.ZIndex = -1
v6.Name = "Fade"
v6.Size = UDim2.fromScale(1.12, 1.12)
v6.Image = "rbxassetid://108711580352701"
v6.Parent = u4
local u7 = {}
local function u11(p8) --[[Anonymous function at line 40]]
    --[[
    Upvalues:
        [1] = u7
    --]]
    for _, v9 in p8:GetChildren() do
        if v9:IsA("Frame") then
            local v10 = u7[v9]
            if v10 then
                v10()
                u7[v9] = nil
            end
        end
    end
end
return {
    ["new"] = function(p12, p13, _) --[[Function name: new, line 53]]
        --[[
        Upvalues:
            [1] = u11
            [2] = u4
            [3] = u3
            [4] = u2
            [5] = u7
        --]]
        local v14 = p12:FindFirstChildOfClass("Frame")
        if not v14 or v14.Name ~= p13.Name then
            u11(p12)
            if v14 and not v14:FindFirstChild("Fade") then
                v14:Destroy()
                v14 = nil
            end
            local u15 = v14 or u4:Clone()
            local v16 = u15
            assert(v16)
            local v17 = u3[p13.Name]
            u15.Label.Image = v17.Icon
            u15.Name = p13.Name
            u15.Parent = p12
            u2.Cycle(u15.Fade, p13.Name, {
                ["Speed"] = 0.5
            })
            u7[u15] = function() --[[Function name: callback, line 76]]
                --[[
                Upvalues:
                    [1] = u2
                    [2] = u15
                --]]
                u2.None(u15.Fade)
                u15:Destroy()
            end
        end
    end,
    ["cleanup"] = u11
}