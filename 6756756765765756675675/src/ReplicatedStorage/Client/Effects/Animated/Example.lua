--devbgascension

-- Bytecode (Base64):
-- BgMMBnVwZGF0ZQdjbGVhbnVwA25ldwhBbmltYXRvcgRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQJRnJhbWV3b3JrB0NsYXNzZXMETWFpZAAEAwEBAAAGAwAABQECBfsBAABbAgAAQwEBAt4BAACCAAEAAQIAAAAAAAAoQAARAQEYAAAAAAETAAAAAAAAAAAAAAGCAAEAAAAWAgEYABgAAAAABgEBAAAGAwAABQEHD/sCAABNAQLvAAAAAJ8BAQKMAgAA2QMAABIBAv/ABAEA4gUEADADBcYCAAAAMAQFkQMAAADBAgAAggUCAAUDAwYBAwEDAgUCAgMCAAENBAEYAAAAAAIBAAUEAQABAAAADgAAAAAGAAABAgAVowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQUAEgYAAABNBAUcBwAAAE0DBBgIAAAATQIDdgkAAACfAQICwAIKABIAAQCCAgIACwMFBAAAAEADBgMHAwgEAABAQAMJAwoDCwMMBgIBAgEAARgAAgAAAAAAAgAAAAAAAAAAAAAIABQBAAAAAAMjvF3MwxOtaxF4N1h8gD72I8pgon1FSQXnS1w5QHBqDwevLgmQcKaC

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.Classes.Maid)
return function(_) --[[Function name: Animator, line 13]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    u2.new()
    local u3 = 0
    return {
        ["update"] = function(p4) --[[Function name: update, line 17]]
            --[[
            Upvalues:
                [1] = u3
            --]]
            u3 = u3 + p4 * 12
        end,
        ["cleanup"] = function() --[[Function name: cleanup, line 22]] end
    }
end