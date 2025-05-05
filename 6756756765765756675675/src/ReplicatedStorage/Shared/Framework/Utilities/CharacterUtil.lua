--devbgascension

-- Bytecode (Base64):
-- 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

local u5 = {
    ["IsAlive"] = function(_, p1) --[[Function name: IsAlive, line 6]]
        if not p1.Parent then
            return false
        end
        local v2 = p1.Character
        if not v2 then
            return false
        end
        if not v2:FindFirstChild("HumanoidRootPart") then
            return false
        end
        local v3 = v2:FindFirstChild("Humanoid")
        return v3 and v3.Health > 0 and true or false
    end,
    ["GetCharacter"] = function(_, p4) --[[Function name: GetCharacter, line 29]]
        if p4.Parent then
            return p4.Character
        else
            return nil
        end
    end
}
local u6 = {
    "Head",
    "UpperTorso",
    "LowerTorso",
    "HumanoidRootPart",
    "LeftUpperArm",
    "LeftLowerArm",
    "LeftHand",
    "RightUpperArm",
    "RightLowerArm",
    "RightHand",
    "LeftUpperLeg",
    "LeftLowerLeg",
    "LeftFoot",
    "RightUpperLeg",
    "RightLowerLeg",
    "RightFoot"
}
function u5.GetRig(_, p7) --[[Anonymous function at line 64]]
    --[[
    Upvalues:
        [1] = u5
        [2] = u6
    --]]
    local v8 = u5:GetCharacter(p7)
    if v8 then
        for _, v9 in u6 do
            local v10 = v8:FindFirstChild(v9)
            if not (v10 and v10:IsA("BasePart")) then
                return nil
            end
        end
        if u5:GetHumanoid(p7) then
            return v8
        else
            return nil
        end
    else
        return nil
    end
end
function u5.GetRootPart(_, p11) --[[Anonymous function at line 85]]
    --[[
    Upvalues:
        [1] = u5
    --]]
    local v12 = u5:GetCharacter(p11)
    if v12 then
        local v13 = v12:FindFirstChild("HumanoidRootPart")
        if v13 and v13:IsA("BasePart") then
            return v13
        else
            return nil
        end
    else
        return nil
    end
end
function u5.GetHumanoid(_, p14) --[[Anonymous function at line 99]]
    --[[
    Upvalues:
        [1] = u5
    --]]
    local v15 = u5:GetCharacter(p14)
    if v15 then
        local v16 = v15:FindFirstChild("Humanoid")
        if v16 and v16:IsA("Humanoid") then
            return v16
        else
            return nil
        end
    else
        return nil
    end
end
function u5.GetAnimator(_, p17) --[[Anonymous function at line 113]]
    --[[
    Upvalues:
        [1] = u5
    --]]
    local v18 = u5:GetHumanoid(p17)
    if v18 then
        local v19 = v18:FindFirstChild("Animator")
        if v19 and v19:IsA("Animator") then
            return v19
        else
            return nil
        end
    else
        return nil
    end
end
return u5