--devbgascension

-- Bytecode (Base64):
-- BgMBBmJpbGVycAACCwYAAAALCAAABQYCAgICAgIKJggBAAkHCARDBgAHJgkDAgkICQRDBwIIJgoHBgkJCgVDCAYJgggCAAAAAwEBGAAAAAEAAAEAAAALAAAAAAEAAAECAAOjAAAAwAAAAIIAAgABBgABAAEAARgAAg4BAAAAAAFj84DuexTDLFE36noEzV80P3bS+G7yG1gREW4Pzr+9WkGFY3L1c/jZ

return function(p1, p2, p3, p4, p5, p6) --[[Function name: bilerp, line 3]]
    local v7 = p1 + (p2 - p1) * p5
    return v7 + (p3 + (p4 - p3) * p5 - v7) * p6
end