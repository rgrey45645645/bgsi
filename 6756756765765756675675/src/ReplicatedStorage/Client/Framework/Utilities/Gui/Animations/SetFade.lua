--devbgascension

-- Bytecode (Base64):
-- BgMaDkdldERlc2NlbmRhbnRzBXRhYmxlBGZpbmQJQ2xhc3NOYW1lCkltYWdlTGFiZWwDSXNBDVZpZXdwb3J0RnJhbWURSW1hZ2VUcmFuc3BhcmVuY3kFRnJhbWULSW1hZ2VCdXR0b24WQmFja2dyb3VuZFRyYW5zcGFyZW5jeQlUZXh0TGFiZWwQVGV4dFRyYW5zcGFyZW5jeQhVSVN0cm9rZQxUcmFuc3BhcmVuY3kKT3JpZ2luYWwlKgZmb3JtYXQMR2V0QXR0cmlidXRlDFNldEF0dHJpYnV0ZQRuZXh0BkNyZWF0ZQRQbGF5B1NldEZhZGUEZ2FtZQxUd2VlblNlcnZpY2UKR2V0U2VydmljZQACFgQBAAAJBgAABQQHAoeEjgFSBAMAKwQCAP8EAAAAAAAAvAUARwAAAACfBQIEZAWDAKQKAwAACBCAUgsEAE0MCdsEAAAAnwoDAisKfAD/CgAAAAAAAG8NBQC8Cwn+BgAAAJ8LAwIrCwUAbw0HALwLCf4GAAAAnwsDAg4LBQDiCwkAMAELowgAAABSCgsAZQAiAG8NCgC8Cwn+BgAAAJ8LAwIrCwUAbw0LALwLCf4GAAAAnwsDAg4LBQDiCw0AMAELOgwAAABSCgsAZQATAG8NDgC8Cwn+BgAAAJ8LAwIOCwUA4gsQADABCyQPAAAAUgoLAGUACQBvDREAvAsJ/gYAAACfCwMCDgsEAOILEwAwAQvZEgAAAFIKCwBSCwoAxgwAAMYNAABkCxQAbxMUAFIVDgC8ExONFQAAAJ8TAwJSEhMAvBAJEhYAAACfEAMCKxAKAG8TFABSFQ4AvBMTjRUAAACfEwMCUhITAIcTCQ68EAkuFwAAAJ8QBAFuC+v/AQAAAIwLAQBgAQkACwAAAFILCgDGDAAAxg0AAGQLAgCMEAAAahAJDm4L/f8BAAAApAsZAAAAgEFSDAoAnwsCAg4LHwArAhQAUgsKAMYMAADGDQAAZAsNAA0PCwAaAACAbxMUAFIVDgC8ExONFQAAAJ8TAwJSEhMAvBAJEhYAAACfEAMCkA8QGmoPCQ5uC/L/AgAAAGUACgD7CwAAUg0JAFIOAgBSDwoAvAsLlhsAAACfCwUCvAsL7hwAAACfCwIBbgV8/wIAAACCAAEAHQMBAwIDAwQACBCAAwQDBQMGAwcDCAUBCAMJAwoDCwUBDAMMAw0FAQ8DDgMPBQESAxADEQMSAxMDFAQAAIBBAgAAAAAAAAAAAxUDFgAEFwEYAAAAAAIAAAABAAAAAAAAAwABAAAAAAAAAAAAAQAAAAABAAAAAAAAAAAAAQAAAAABAAAAAAEAAAAAAQAAAAABAAAAAwAAAAEAAAAAAAAAAAABAAAAAAAAAAAA/gAGAAABAAAAAQD/AAUAAAAAAQEAAAABAAEAAAAAAAAAAAAC/AAABwAAAAAAAAAAANwAKAoAAAAAAwAAAQIACqMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwLAAQQAEgAAAIIBAgAFAxgEAAAAQAMZAxoGAAEAAQABGAABAAAAAAACADMBAAAAAAE7cO1iEoOUTQm0h/YDdzDCwyhc+OoGkv6Y6muq50WWNHTwtCAjCcTA

local u1 = game:GetService("TweenService")
return function(p2, p3, p4, p5) --[[Function name: SetFade, line 4]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v6 = p5 or {}
    for _, v7 in p2:GetDescendants() do
        if not table.find(v6, v7.ClassName) then
            local v8 = (v7:IsA("ImageLabel") or v7:IsA("ViewportFrame")) and {
                ["ImageTransparency"] = p3
            } or ((v7:IsA("Frame") or v7:IsA("ImageButton")) and {
                ["BackgroundTransparency"] = p3
            } or (v7:IsA("TextLabel") and {
                ["TextTransparency"] = p3
            } or (v7:IsA("UIStroke") and {
                ["Transparency"] = p3
            } or {})))
            for v9 in v8 do
                if not v7:GetAttribute((("Original%*"):format(v9))) then
                    v7:SetAttribute(("Original%*"):format(v9), v7[v9])
                end
            end
            if p3 < 1 then
                for v10 in v8 do
                    v7[v10] = 0
                end
            end
            if next(v8) then
                if p4 then
                    u1:Create(v7, p4, v8):Play()
                else
                    for v11, v12 in v8 do
                        v7[v11] = v12 == 0 and (v7:GetAttribute((("Original%*"):format(v11))) or 0) or v12
                    end
                end
            end
        end
    end
end