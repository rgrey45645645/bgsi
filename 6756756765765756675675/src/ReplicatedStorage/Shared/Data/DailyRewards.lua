--devbgascension

-- Bytecode (Base64):
-- BgMUBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwRUeXBlBE5hbWUGQW1vdW50B1Bvd2VydXALU3BpbiBUaWNrZXQFTGV2ZWwGUG90aW9uBUx1Y2t5C015c3RlcnkgQm94BVNwZWVkCVBvd2VyIE9yYglSb3lhbCBLZXkGTXl0aGljBUNvaW5zAAEJAAABAgCqAaMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQUAAABAQE0DABIGAAAATQID7wcAAACfAQIC/wIAAAcAAAD/AwAAAQAAAOIECwBvBQwAMAUEEQgAAABvBQ0AMAUEugkAAACMBQEAMAUEKwoAAADFAwQCAQAAAPYDAgD/AwAAAQAAAOIEDwBvBRAAMAUEEQgAAABvBREAMAUEugkAAACMBQUAMAUEbQ4AAACMBQEAMAUEKwoAAADFAwQCAQAAAPYDAgH/AwAAAQAAAOIECwBvBQwAMAUEEQgAAABvBRIAMAUEugkAAACMBQUAMAUEKwoAAADFAwQCAQAAAPYDAgL/AwAAAQAAAOIEDwBvBRAAMAUEEQgAAABvBRMAMAUEugkAAACMBQUAMAUEbQ4AAACMBQEAMAUEKwoAAADFAwQCAQAAAPYDAgP/AwAAAQAAAOIECwBvBQwAMAUEEQgAAABvBRQAMAUEugkAAACMBQIAMAUEKwoAAADFAwQCAQAAAPYDAgT/AwAAAQAAAOIECwBvBQwAMAUEEQgAAABvBRUAMAUEugkAAACMBQIAMAUEKwoAAADFAwQCAQAAAPYDAgX/AwAABAAAAOIEDwBvBRAAMAUEEQgAAABvBREAMAUEugkAAACMBQYAMAUEbQ4AAACMBQEAMAUEKwoAAADiBQ8AbwYQADAGBREIAAAAbwYWADAGBboJAAAAjAYGADAGBW0OAAAAjAYBADAGBSsKAAAA4gYPAG8HEAAwBwYRCAAAAG8HFwAwBwa6CQAAAIwHBgAwBwZtDgAAAIwHAQAwBwYrCgAAAOIHDwBvCBAAMAgHEQgAAABvCBMAMAgHugkAAACMCAYAMAgHbQ4AAACMCAEAMAgHKwoAAADFAwQFAQAAAPYDAgaCAgIAGAMBBAAAAEADAgMDAwQEAABAQAMFAwYDBwMIAwkFAwgJCgMKAwsDDAUECAkOCgMNAw4DDwMQAxEDEgMTAxQAAQABGAACAAAAAAACAAAAAAAABAABAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAABAAEAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAPwIAQAAAAAAm8C/vTtf17epBNUpE5vCFqmei2NQyAwRzXkh1YPcOzX+qe3gvIKE+w==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local v2 = {
    {
        {
            ["Type"] = "Powerup",
            ["Name"] = "Spin Ticket",
            ["Amount"] = 1
        }
    },
    {
        {
            ["Type"] = "Potion",
            ["Name"] = "Lucky",
            ["Level"] = 5,
            ["Amount"] = 1
        }
    },
    {
        {
            ["Type"] = "Powerup",
            ["Name"] = "Mystery Box",
            ["Amount"] = 5
        }
    },
    {
        {
            ["Type"] = "Potion",
            ["Name"] = "Speed",
            ["Level"] = 5,
            ["Amount"] = 1
        }
    },
    {
        {
            ["Type"] = "Powerup",
            ["Name"] = "Power Orb",
            ["Amount"] = 2
        }
    },
    {
        {
            ["Type"] = "Powerup",
            ["Name"] = "Royal Key",
            ["Amount"] = 2
        }
    },
    {
        {
            ["Type"] = "Potion",
            ["Name"] = "Lucky",
            ["Level"] = 6,
            ["Amount"] = 1
        },
        {
            ["Type"] = "Potion",
            ["Name"] = "Mythic",
            ["Level"] = 6,
            ["Amount"] = 1
        },
        {
            ["Type"] = "Potion",
            ["Name"] = "Coins",
            ["Level"] = 6,
            ["Amount"] = 1
        },
        {
            ["Type"] = "Potion",
            ["Name"] = "Speed",
            ["Level"] = 6,
            ["Amount"] = 1
        }
    }
}
return v2