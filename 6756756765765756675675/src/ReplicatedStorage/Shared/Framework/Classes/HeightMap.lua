--devbgascension

-- Bytecode (Base64):
-- BgMcBl9zY2FsZQZfY2FjaGUNUmF5Y2FzdFBhcmFtcwNuZXcaRmlsdGVyRGVzY2VuZGFudHNJbnN0YW5jZXMERW51bRFSYXljYXN0RmlsdGVyVHlwZQdJbmNsdWRlCkZpbHRlclR5cGUHX3BhcmFtcwxzZXRtZXRhdGFibGUHVmVjdG9yMwdSYXljYXN0BkhlaWdodAhQb3NpdGlvbgFZB19zYW1wbGUBWARtYXRoBXJvdW5kAVoJR2V0SGVpZ2h0BWZsb29yD0dldFNtb290aEhlaWdodARnYW1lCVdvcmtzcGFjZQpHZXRTZXJ2aWNlB19faW5kZXgABQcCAQAAABv/AgMAAAAAADAAAt4AAAAA/wMAAAAAAAAwAwJFAQAAAKQDBAAADCCAnwMBAjABA30FAAAApAQJAAgcYMAwBANXCgAAADADArELAAAA+wYAAJ49AgQGAAAAUgUCAKQEDQAAAMBAnwQDAoIEAgAOAwEDAgMDAwQEAAwggAMFAwYDBwMIBAgcYMADCQMKAwsEAADAQAAmBAEYAAABAAEAAAACAAABAAEAAAABAAIAAAAAAAAAJwAAAAAMAwEAAAAwjAUAADQ2AQUFAgAAUgQBAFIGAgCkAwIAAAQAgJ8DBAJNBQBFAwAAAIcEBQNHBCEAAAAAgPsFAABNCQDeBAAAAAkIAQmMCSwBTQsA3gQAAAAJCgILTDYAAqQHAgAABACAnwcEAm8IBQBNCQCxBgAAALwFBcIHAAAAnwUFAuIGCQAOBQUATQgFOwoAAABNBwh4CwAAAGUAAQCMBwAAMAcGvAgAAABSBAYATQYARQMAAABqBAYDTQUEvAgAAACCBQIADAMMAwQEAAQAgAMCAwEHAAAAAAAAlsMAAAAAAAAAAAMKAw0DDgUBCAMPAxAANBEBGAAAAAAAAAAAAgAAAQABAQAAAAAAAAAAAAABAQD9AAAFAQAAAAAAAAAAAAIAAAMAADUAAAAACQIAAAAAFE0CAN4AAAAATQcBeQEAAADsBgcCuzAGAqQFBAAADCCAnwUCAk0IAXsFAAAA7AcIArswBwKkBgQAAAwggJ8GAgK8AwCbBgAAAJ8DBACCAwAABwMBAxIDEwMUBAAMIIADFQMRAEgWARgAAAMAAAAAAAABAAAAAAAA/gAAAEkAAAAAEAIAAAAANk0CAN4AAAAATQUBeQEAAADsBAUCuwwEAqQDBAAADCCAnwMCAk0GAXsFAAAA7AUGArsMBQKkBAQAAAwggJ8EAgJSBwMAUggEALwFAJsGAAAAnwUEAlIIAwCVCQQHvAYAmwYAAACfBgQClQkDB1IKBAC8BwCbBgAAAJ8HBAKVCgMHlQsEB7wIAJsGAAAAnwgEAk0LAXkBAAAAzwoLAuwJCgJNDAF7BQAAAM8LDALsCgsCJg0GBQkMCg1DCwUMJg4IBwkNCg5DDAcNJg8MCwkOCQ9DDQsOgg0CAAgDAQMSAxMDFwQADCCAAxUDEQIAAAAAAADwPwBSGAEYAAACAAAAAAAAAQAAAAAAAAIAAAAAAQAAAAABAAAAAAEAAAAAAgAAAAEAAAACAAABAAACAAAAUwAAAAADAAABAgAaowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAv8BAAAAAAAAMAEBbgQAAADAAgUAEgABADACAe8GAAAAwAIHABIAAAAwAgGbCAAAAMACCQAwAgGZCgAAAMACCwAwAgHDDAAAAIIBAgANAxkEAAAAQAMaAxsDHAYAAwQGAQMRBgIDFgYDAxgEAAECAwEAARgAAgAAAAAAGwABAAcAAAAOAAAAFAAACgAAFQEAAAAABL8UOfJ96bdbjdBTZuzEKLdePFYEvo8Ozx4XS+H86CbRzTmumRrK+ng=

local u1 = game:GetService("Workspace")
local u2 = {}
u2.__index = u2
function u2.new(p3, p4) --[[Anonymous function at line 38]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v5 = {
        ["_scale"] = p3,
        ["_cache"] = {}
    }
    local v6 = RaycastParams.new()
    v6.FilterDescendantsInstances = p4
    v6.FilterType = Enum.RaycastFilterType.Include
    v5._params = v6
    local v7 = u2
    return setmetatable(v5, v7)
end
function u2._sample(p8, p9, p10) --[[Anonymous function at line 52]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v11 = Vector3.new(p9, 0, p10)
    local v12 = p8._cache[v11]
    if v12 == nil then
        local v13 = u1
        local v14 = p9 * p8._scale
        local v15 = p10 * p8._scale
        local v16 = v13:Raycast(Vector3.new(v14, 300, v15), Vector3.new(0, -300, 0), p8._params)
        v12 = {
            ["Height"] = not v16 and 0 or v16.Position.Y
        }
        p8._cache[v11] = v12
    end
    return v12.Height
end
function u2.GetHeight(p17, p18) --[[Anonymous function at line 72]]
    local v19 = p17._scale
    local v20 = p18.X / v19
    local v21 = math.round(v20)
    local v22 = p18.Z / v19
    return p17:_sample(v21, (math.round(v22)))
end
function u2.GetSmoothHeight(p23, p24) --[[Anonymous function at line 82]]
    local v25 = p23._scale
    local v26 = p24.X / v25
    local v27 = math.floor(v26)
    local v28 = p24.Z / v25
    local v29 = math.floor(v28)
    local v30 = p23:_sample(v27, v29)
    local v31 = p23:_sample(v27, v29 + 1)
    local v32 = p23:_sample(v27 + 1, v29)
    local v33 = p23:_sample(v27 + 1, v29 + 1)
    local v34 = p24.X % v25 / v25
    local v35 = p24.Z % v25 / v25
    local v36 = v30 + v35 * (v31 - v30)
    return v36 + v34 * (v32 + v35 * (v33 - v32) - v36)
end
return u2