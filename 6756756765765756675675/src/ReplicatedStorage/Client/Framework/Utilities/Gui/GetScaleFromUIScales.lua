--devbgascension

-- Bytecode (Base64):
-- BgMCBVNjYWxlFEdldFNjYWxlRnJvbVVJU2NhbGVzAAIHAQAAAAoDAAEFAQQHBgYCC4wBAQCMBAEAHAIAAIwDAQCoAgUAhwYABE0FBoQAAAAACQEBBYsC+/+CAQIAAQMBAAYCARgAAQAAAAEAAAD/AwcAAAAAAQAAAQIAA6MAAADAAAAAggACAAEGAAEAAQABGAAFCQEAAAAAAWSgCLOxyf3CVmRiJ3PAAIeGwsZlRW8VQE0Krk+I0xvdaVSiVUuTjy0=

return function(p1) --[[Function name: GetScaleFromUIScales, line 6]]
    local v2 = 1
    for v3 = 1, #p1 do
        v2 = v2 * p1[v3].Scale
    end
    return v2
end