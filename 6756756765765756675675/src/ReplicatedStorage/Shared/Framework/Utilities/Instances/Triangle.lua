--devbgascension

-- Bytecode (Base64):
-- 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

local u1 = Instance.new("WedgePart")
u1.Anchored = true
u1.Material = Enum.Material.SmoothPlastic
u1.TopSurface = Enum.SurfaceType.Smooth
u1.BottomSurface = Enum.SurfaceType.Smooth
u1.Locked = true
local v2 = Instance.new("SpecialMesh")
v2.MeshType = Enum.MeshType.Wedge
v2.Scale = Vector3.new(0, 1, 1)
v2.Parent = u1
local u3 = Vector3.new().Dot
local u4 = Vector3.new().Cross
local u35 = {
    ["draw"] = function(p5, p6, p7) --[[Function name: draw, line 27]]
        --[[
        Upvalues:
            [1] = u1
            [2] = u35
        --]]
        local v8 = Instance.new("Model")
        local v9 = u1:Clone()
        local v10 = u1:Clone()
        v9.Name = "Wedge0"
        v10.Name = "Wedge1"
        v9.Parent = v8
        v10.Parent = v8
        u35.update(v8, p5, p6, p7)
        return v8
    end,
    ["update"] = function(p11, p12, p13, p14) --[[Function name: update, line 44]]
        --[[
        Upvalues:
            [1] = u3
            [2] = u4
        --]]
        local v15 = p11.Wedge0
        local v16 = p11.Wedge1
        local v17 = p13 - p12
        local v18 = p14 - p12
        local v19 = p14 - p13
        local v20 = u3(v17, v17)
        local v21 = u3(v18, v18)
        local v22 = u3(v19, v19)
        local v23
        if v21 < v20 and v22 < v20 then
            local v24 = -v17
            v17 = -v18
            v21 = v22
            v23 = v19
            v18 = v24
            local v25 = p12
            p12 = p14
            p14 = p13
            p13 = v25
        elseif v21 < v22 and v20 < v22 then
            v23 = -v18
            v18 = -v19
        else
            v21 = v20
            v23 = v17
            v17 = v19
            local v26 = p12
            p12 = p13
            p13 = p14
            p14 = v26
        end
        local v27 = v18.Unit
        local v28 = u3(v23, v27)
        local v29 = (v21 - v28 * v28) ^ 0.5
        local v30 = (v23 - v27 * v28) / v29
        local v31 = u4(v30, v27)
        local v32 = v29 + 0.001
        local v33 = v28 + 0.001
        v15.Size = Vector3.new(0, v32, v33)
        v15.CFrame = CFrame.new(0, 0, 0, v31.X, v30.X, v27.X, v31.Y, v30.Y, v27.Y, v31.Z, v30.Z, v27.Z) + (p14 + p12) * 0.5
        local v34 = u3
        v16.Size = Vector3.new(0, v29, v34(v17, v27))
        v16.CFrame = CFrame.new(0, 0, 0, -v31.X, v30.X, -v27.X, -v31.Y, v30.Y, -v27.Y, -v31.Z, v30.Z, -v27.Z) + (p12 + p13) * 0.5
    end
}
return u35