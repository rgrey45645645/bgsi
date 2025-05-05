--devbgascension

-- Bytecode (Base64):
-- BgMcBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwVVdGlscwhSaWNoVGV4dAdQYWxldHRlC0Rlc2NyaXB0aW9uBUltYWdlBEJ1ZmYfWW91IGNhbiBub3cgc3RvcmUgJSogbW9yZSBwZXRzIQlhdXRvQ29sb3IEQlVGRgRUZXh0BEN5YW4GZm9ybWF0HHJieGFzc2V0aWQ6Ly8xMTMyNzcwMjU3MTk2MTQEVHlwZQVWYWx1ZQxNb3JlIFN0b3JhZ2UeWW91IGNhbiBub3cgZXF1aXAgJSogbW9yZSBwZXQhHHJieGFzc2V0aWQ6Ly8xNDA0MzEzNzcyMzE0MTEKUGV0IEVxdWlwcyxJbmNyZWFzZXMgaG93IG1hbnkgZWdncyB5b3UgY2FuIGhhdGNoIGJ5ICUqIRxyYnhhc3NldGlkOi8vMTA0MTQ1MDE3MDA4MzA5C0V4dHJhIEhhdGNoAAENAAABAgB7owAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQMAEgYAAABNAgPvBwAAAJ8BAgKkAgUAAABAQE0FABIGAAAATQQFoQgAAABNAwTRCQAAAJ8CAgKkAwUAAABAQE0FABIGAAAATQQFeAoAAACfAwIC/wQDAAAAAADiBQ4AbwcPAE0JAswQAAAAbwoRAE0MA/USAAAATQsMoxMAAACfCQMCvAcHjRQAAACfBwMCUgYHADAGBeILAAAAbwYVADAGBakMAAAA4gYYAG8HFwAwBwYRFgAAAIwHZAAwBwbsFwAAADAGBSMNAAAAMAUE/BkAAADiBQ4AbwcaAE0JAswQAAAAbwoRAE0MA/USAAAATQsMoxMAAACfCQMCvAcHjRQAAACfBwMCUgYHADAGBeILAAAAbwYbADAGBakMAAAA4gYYAG8HFwAwBwYRFgAAAIwHAQAwBwbsFwAAADAGBSMNAAAAMAUEvxwAAADiBQ4AbwcdAE0JAswQAAAAbwoRAE0MA/USAAAATQsMoxMAAACfCQMCvAcHjRQAAACfBwMCUgYHADAGBeILAAAAbwYeADAGBakMAAAA4gYYAG8HFwAwBwYRFgAAAIwHAQAwBwbsFwAAADAGBSMNAAAAMAUECh8AAACCBAIAIAMBBAAAAEADAgMDAwQEAABAQAMFAwYDBwMIAwkDCgMLAwwFAwsMDQMNAw4DDwMQAxEDEgMTAxQDFQUCFhcDFgMXAxgDGQMaAxsDHAABAAEYAAIAAAAAAAIAAAAAAAABAAAAAAAAAAABAAAAAAAACQABAQAAAAAAAAAAAAAAAAAAAQAAAQAAAAAAAAAA/QAGAQAAAAAAAAAAAAAAAAAAAQAAAQAAAAAAAAAA/QAGAQAAAAAAAAAAAAAAAAAAAQAAAQAAAAAAAAAA/QAHAQAAAAAAu+RRNbK6JmOJIDuhnEia3Hp52Cuqvzt/2JcMVT0nBhj4Cxz3TAj4ug==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local v2 = require(v1.Shared.Utils.RichText)
local v3 = require(v1.Shared.Palette)
local v4 = {}
local v5 = {
    ["Description"] = ("You can now store %* more pets!"):format((v2.autoColor("BUFF", v3.Text.Cyan))),
    ["Image"] = "rbxassetid://113277025719614",
    ["Buff"] = {
        ["Type"] = "Value",
        ["Value"] = 100
    }
}
v4["More Storage"] = v5
local v6 = {
    ["Description"] = ("You can now equip %* more pet!"):format((v2.autoColor("BUFF", v3.Text.Cyan))),
    ["Image"] = "rbxassetid://140431377231411",
    ["Buff"] = {
        ["Type"] = "Value",
        ["Value"] = 1
    }
}
v4["Pet Equips"] = v6
local v7 = {
    ["Description"] = ("Increases how many eggs you can hatch by %*!"):format((v2.autoColor("BUFF", v3.Text.Cyan))),
    ["Image"] = "rbxassetid://104145017008309",
    ["Buff"] = {
        ["Type"] = "Value",
        ["Value"] = 1
    }
}
v4["Extra Hatch"] = v7
return v4