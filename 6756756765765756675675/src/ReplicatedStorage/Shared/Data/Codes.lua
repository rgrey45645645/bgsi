--devbgascension

-- Bytecode (Base64):
-- BgMaBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwRUeXBlCEN1cnJlbmN5BkFtb3VudAVDb2lucwROYW1lB1Bvd2VydXALTXlzdGVyeSBCb3gHcmVsZWFzZQVMZXZlbAZQb3Rpb24FTHVja3kFbHVja3kGZWFzdGVyB3VwZGF0ZTIERGljZQpHaWFudCBEaWNlB3VwZGF0ZTMPSW5maW5pdHkgRWxpeGlyC0dvbGRlbiBEaWNlDnN5bGVudGx5c3NvcnJ5AAEJAAABAgCmAaMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQUAAABAQE0DABIGAAAATQID7wcAAACfAQIC/wIEAAAAAAD/AwAAAgAAAOIECwBvBQkAMAUEEQgAAABvBQwAMAUECQkAAACMBfQBMAUEKwoAAADiBQ4AbwYPADAGBREIAAAAbwYQADAGBboNAAAAjAYBADAGBSsKAAAAxQMEAwEAAAAwAwI8EQAAAP8DAAABAAAA4gQTAG8FFAAwBQQRCAAAAG8FFQAwBQS6DQAAAIwFBQAwBQRtEgAAAIwFAQAwBQQrCgAAAMUDBAIBAAAAMAMCoRYAAAD/AwAAAQAAAOIEDgBvBQ8AMAUEEQgAAABvBRAAMAUEug0AAACMBQQAMAUEKwoAAADFAwQCAQAAADADAjEXAAAA/wMAAAEAAADiBA4AbwUPADAFBBEIAAAAbwUQADAFBLoNAAAAjAUFADAFBCsKAAAAxQMEAgEAAAAwAwKXGAAAAP8DAAACAAAA4gQOAG8FDwAwBQQRCAAAAG8FGQAwBQS6DQAAAIwFAgAwBQQrCgAAAOIFDgBvBg8AMAYFEQgAAABvBhoAMAYFug0AAACMBgIAMAYFKwoAAADFAwQDAQAAADADAq0bAAAA/wMAAAQAAADiBA4AbwUUADAFBBEIAAAAbwUcADAFBLoNAAAAjAUDADAFBCsKAAAA4gUOAG8GDwAwBgURCAAAAG8GGQAwBgW6DQAAAIwGBAAwBgUrCgAAAOIGDgBvBw8AMAcGEQgAAABvBxoAMAcGug0AAACMBwIAMAcGKwoAAADiBw4AbwgPADAIBxEIAAAAbwgdADAIB7oNAAAAjAgBADAIBysKAAAAxQMEBQEAAAAwAwI4HgAAAIICAgAfAwEEAAAAQAMCAwMDBAQAAEBAAwUDBgMHAwgDCQUDCAkKAwoDCwUDCA0KAwwDDQMOAw8FBAgNEgoDEAMRAxIDEwMUAxUDFgMXAxgDGQMaAAEAARgAAgAAAAAAAgAAAAAAAAQAAQABAAAAAAAAAAAAAQAAAAAAAAAAAAAA/gAFAAEAAAAAAAAAAAAAAAAAAP8ACAABAAAAAAAAAAAAAAD/AAsAAQAAAAAAAAAAAAAA/wAIAAEAAAAAAAAAAAABAAAAAAAAAAAAAAD+AAUAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAAA/AAJAQAAAAAAabiqZ2nTdZlbfMDzFqae6l1zTs9p4PLv6SoW4cgAJSGj4XyH+6/WYQ==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local v2 = {
    ["release"] = {
        {
            ["Type"] = "Currency",
            ["Currency"] = "Coins",
            ["Amount"] = 500
        },
        {
            ["Type"] = "Powerup",
            ["Name"] = "Mystery Box",
            ["Amount"] = 1
        }
    },
    ["lucky"] = {
        {
            ["Type"] = "Potion",
            ["Name"] = "Lucky",
            ["Level"] = 5,
            ["Amount"] = 1
        }
    },
    ["easter"] = {
        {
            ["Type"] = "Powerup",
            ["Name"] = "Mystery Box",
            ["Amount"] = 4
        }
    },
    ["update2"] = {
        {
            ["Type"] = "Powerup",
            ["Name"] = "Mystery Box",
            ["Amount"] = 5
        }
    },
    ["update3"] = {
        {
            ["Type"] = "Powerup",
            ["Name"] = "Dice",
            ["Amount"] = 2
        },
        {
            ["Type"] = "Powerup",
            ["Name"] = "Giant Dice",
            ["Amount"] = 2
        }
    },
    ["sylentlyssorry"] = {
        {
            ["Type"] = "Potion",
            ["Name"] = "Infinity Elixir",
            ["Amount"] = 3
        },
        {
            ["Type"] = "Powerup",
            ["Name"] = "Dice",
            ["Amount"] = 4
        },
        {
            ["Type"] = "Powerup",
            ["Name"] = "Giant Dice",
            ["Amount"] = 2
        },
        {
            ["Type"] = "Powerup",
            ["Name"] = "Golden Dice",
            ["Amount"] = 1
        }
    }
}
return v2