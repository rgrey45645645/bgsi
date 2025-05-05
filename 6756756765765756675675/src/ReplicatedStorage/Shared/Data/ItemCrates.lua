--devbgascension

-- Bytecode (Base64):
-- BgMcBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwREYXRhCEJ1aWxkZXJzD0xvb3RQb29sQnVpbGRlcgVSb2xscwRQb29sA25ldwRUeXBlBE5hbWUFTGV2ZWwGQW1vdW50BlBvdGlvbgVMdWNreQNBZGQFU3BlZWQFQ29pbnMGTXl0aGljBUJ1aWxkCkl0ZW0gQ3JhdGUHUG93ZXJ1cApHb2xkZW4gS2V5ClJlcm9sbCBPcmIOVXBncmFkZWQgQ3JhdGUAAQoAAAECANwBowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQMAEgYAAABNAgPvBwAAAJ8BAgKkAgUAAABAQE0GABIGAAAATQUGxggAAABNBAW7CQAAAE0DBG4KAAAAnwICAv8DAgAAAAAA4gQNAIwFAwAwBQQxCwAAAE0FAu8OAAAAnwUBAowHGQDiCBMAbwkUADAJCBEPAAAAbwkVADAJCLoQAAAAjAkBADAJCG0RAAAAjAkBADAJCCsSAAAAvAUFXxYAAACfBQQCjAcZAOIIEwBvCRQAMAkIEQ8AAABvCRcAMAkIuhAAAACMCQEAMAkIbREAAACMCQEAMAkIKxIAAAC8BQVfFgAAAJ8FBAKMBxkA4ggTAG8JFAAwCQgRDwAAAG8JGAAwCQi6EAAAAIwJAQAwCQhtEQAAAIwJAQAwCQgrEgAAALwFBV8WAAAAnwUEAowHGQDiCBMAbwkUADAJCBEPAAAAbwkZADAJCLoQAAAAjAkBADAJCG0RAAAAjAkBADAJCCsSAAAAvAUFXxYAAACfBQQCvAUFTxoAAACfBQICMAUEQgwAAAAwBAOpGwAAAOIEDQCMBQMAMAUEMQsAAABNBQLvDgAAAJ8FAQKMBxgA4ggTAG8JFAAwCQgRDwAAAG8JFQAwCQi6EAAAAIwJAgAwCQhtEQAAAIwJAQAwCQgrEgAAALwFBV8WAAAAnwUEAowHGADiCBMAbwkUADAJCBEPAAAAbwkXADAJCLoQAAAAjAkCADAJCG0RAAAAjAkBADAJCCsSAAAAvAUFXxYAAACfBQQCjAcYAOIIEwBvCRQAMAkIEQ8AAABvCRgAMAkIuhAAAACMCQIAMAkIbREAAACMCQEAMAkIKxIAAAC8BQVfFgAAAJ8FBAKMBxgA4ggTAG8JFAAwCQgRDwAAAG8JGQAwCQi6EAAAAIwJAgAwCQhtEQAAAIwJAQAwCQgrEgAAALwFBV8WAAAAnwUEAowHAgDiCBwAbwkdADAJCBEPAAAAbwkeADAJCLoQAAAAjAkBADAJCCsSAAAAvAUFXxYAAACfBQQCjAcCAOIIHABvCR0AMAkIEQ8AAABvCR8AMAkIuhAAAACMCQEAMAkIKxIAAAC8BQVfFgAAAJ8FBAK8BQVPGgAAAJ8FAgIwBQRCDAAAADAEA/8gAAAAggMCACEDAQQAAABAAwIDAwMEBAAAQEADBQMGAwcDCAMJAwoDCwUCCwwDDAMNAw4DDwMQBQQPEBESAxEDEgMTAxQDFQMWAxcDGAUDDxASAxkDGgMbAxwAAQABGAACAAAAAAACAAAAAAAAAQAAAAAAAAAAAAAJAAEBAAABAAABAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAEAAPsA/gAKAQAAAQAAAQAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAgAA9wD+ABABAAAAAAAYeo+SomMtHCq+5QYYsdNpGxWWZxuE0WHCo8JvKkgDqFWTrYbt/J2L

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local v2 = require(v1.Shared.Data.Builders.LootPoolBuilder)
local v3 = {}
local v4 = {
    ["Rolls"] = 3,
    ["Pool"] = v2.new():Add(25, {
        ["Type"] = "Potion",
        ["Name"] = "Lucky",
        ["Level"] = 1,
        ["Amount"] = 1
    }):Add(25, {
        ["Type"] = "Potion",
        ["Name"] = "Speed",
        ["Level"] = 1,
        ["Amount"] = 1
    }):Add(25, {
        ["Type"] = "Potion",
        ["Name"] = "Coins",
        ["Level"] = 1,
        ["Amount"] = 1
    }):Add(25, {
        ["Type"] = "Potion",
        ["Name"] = "Mythic",
        ["Level"] = 1,
        ["Amount"] = 1
    }):Build()
}
v3["Item Crate"] = v4
local v5 = {
    ["Rolls"] = 3,
    ["Pool"] = v2.new():Add(24, {
        ["Type"] = "Potion",
        ["Name"] = "Lucky",
        ["Level"] = 2,
        ["Amount"] = 1
    }):Add(24, {
        ["Type"] = "Potion",
        ["Name"] = "Speed",
        ["Level"] = 2,
        ["Amount"] = 1
    }):Add(24, {
        ["Type"] = "Potion",
        ["Name"] = "Coins",
        ["Level"] = 2,
        ["Amount"] = 1
    }):Add(24, {
        ["Type"] = "Potion",
        ["Name"] = "Mythic",
        ["Level"] = 2,
        ["Amount"] = 1
    }):Add(2, {
        ["Type"] = "Powerup",
        ["Name"] = "Golden Key",
        ["Amount"] = 1
    }):Add(2, {
        ["Type"] = "Powerup",
        ["Name"] = "Reroll Orb",
        ["Amount"] = 1
    }):Build()
}
v3["Upgraded Crate"] = v5
return v3