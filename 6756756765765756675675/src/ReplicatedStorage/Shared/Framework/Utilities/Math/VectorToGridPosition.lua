--devbgascension

-- Bytecode (Base64):
-- BgMIAVgEbWF0aAVyb3VuZAFZAVoHVmVjdG9yMwNuZXcUVmVjdG9yVG9HcmlkUG9zaXRpb24AAgoCAAAABwQAAAUCCAIePgIBAE0HAHkBAAAAQwYHAuwFBgG7MAUCpAQEAAAMIICfBAICTQgAeAUAAABDBwgC7AYHAbswBgKkBQQAAAwggJ8FAgJNCQB7BgAAAEMICQLsBwgBuzAHAqQGBAAADCCAnwYCAkw2AAKkAwkAACBwgJ8DBAKCAwIACgIAAAAAAAAAQAMBAwIDAwQADCCAAwQDBQMGAwcEACBwgAADCAEYAAIAAAAAAAAAAQAAAAAAAAABAAAAAAAAAP0AAAAABwAAAAABAAABAgADowAAAMAAAACCAAIAAQYAAQABAAEYAAINAQAAAAABisxf15wtZPa4CDVD0xEb3IKpjx3D1a/YlOzLX8n/VioGQtg9J0q2BQ==

return function(p1, p2) --[[Function name: VectorToGridPosition, line 3]]
    local v3 = p2 / 2
    local v4 = (p1.X + v3) / p2
    local v5 = math.round(v4)
    local v6 = (p1.Y + v3) / p2
    local v7 = math.round(v6)
    local v8 = (p1.Z + v3) / p2
    local v9 = math.round(v8)
    return Vector3.new(v5, v7, v9)
end