--devbgascension

-- Bytecode (Base64):
-- BgMMCV9iaW5kYWJsZQhJbnN0YW5jZQNuZXcNQmluZGFibGVFdmVudAxzZXRtZXRhdGFibGUFRXZlbnQHQ29ubmVjdARPbmNlBEZpcmUHRGVzdHJveQVDbGVhcgdfX2luZGV4AAcEAAEAAAAO4gEBAKQCBAAADCCAbwMFAJ8CAgIwAgH0AAAAAPsCAACePQEDAgAAAKQABwAAAGBAnwADAoIAAgAIAwEFAQADAgMDBAAMIIADBAMFBAAAYEAAFgMBGAABAAAAAAABAAD+AAAAFwAAAAAFAgAAAAAJTQMA9AAAAABNAgM2AQAAAFIEAQC8AgLHAgAAAJ8CAwCCAgAAAwMBAwYDBwAcBwEYAAAAAAAAAAAAHQAAAAAFAgAAAAAJTQMA9AAAAABNAgM2AQAAAFIEAQC8AgI9AgAAAJ8CAwCCAgAAAwMBAwYDCAAgCAEYAAAAAAAAAAAAIQAAAAAEAQABAAAIowEAAE0BAPQAAAAA3QMAALwBAd0BAAAAnwEAAYIAAQACAwEDCQAkCQEYAAEAAAAAAAEkAAAAAAMBAAAAAAZNAQD0AAAAALwBAVABAAAAnwECAYIAAQACAwEDCgAoCgEYAAAAAAABKQAAAAADAQAAAAAMTQEA9AAAAAC8AQFQAQAAAJ8BAgGkAQQAAAwggG8CBQCfAQICMAEA9AAAAACCAAEABgMBAwoDAgMDBAAMIIADBAAsCwEYAAAAAAABAAAAAAABLQAAAAACAAABAgAZowAAAP8AAAAAAAAAMAAAbgAAAADAAQEAEgAAADABAO8CAAAAwAEDADABAMcEAAAAwAEFADABAD0GAAAAwAEHADABAN0IAAAAwAEJADABAFAKAAAAwAELADABAJAMAAAAggACAA0DDAYAAwMGAQMHBgIDCAYDAwkGBAMKBgUDCwYAAQIDBAUBAAEYABEAAQADAAAABgAABAAABAAABAAABAAABgEAAAAABpUMmja8Ea5Np8jwotvafNg9xH4yBJGpKL/oP82wM/y/WHrYpUB5sHI=

local u1 = {}
u1.__index = u1
function u1.new() --[[Anonymous function at line 22]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v2 = {
        ["_bindable"] = Instance.new("BindableEvent")
    }
    local v3 = u1
    return setmetatable(v2, v3)
end
function u1.Connect(p4, p5) --[[Anonymous function at line 28]]
    return p4._bindable.Event:Connect(p5)
end
function u1.Once(p6, p7) --[[Anonymous function at line 32]]
    return p6._bindable.Event:Once(p7)
end
function u1.Fire(p8, ...) --[[Anonymous function at line 36]]
    p8._bindable:Fire(...)
end
function u1.Destroy(p9) --[[Anonymous function at line 40]]
    p9._bindable:Destroy()
end
function u1.Clear(p10) --[[Anonymous function at line 44]]
    p10._bindable:Destroy()
    p10._bindable = Instance.new("BindableEvent")
end
return u1