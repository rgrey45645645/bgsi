--devbgascension

-- Bytecode (Base64):
-- BgMbBFR5cGUIQ3VycmVuY3kGQW1vdW50BUNvaW5zBE5hbWUFTGV2ZWwGUG90aW9uBUx1Y2t5B1Bvd2VydXALTXlzdGVyeSBCb3gJR2V0UHJpemVzBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwREYXRhCEJ1aWxkZXJzD0xvb3RQb29sQnVpbGRlcglGcmFtZXdvcmsJVXRpbGl0aWVzBE1hdGgVR2V0UmFuZG9tV2VpZ2h0ZWRJdGVtDVJlZnJlc2hQZXJpb2QLUHJpemVTY29yZXMPUG9pbnRzUGVyU2Vjb25kAAIIAwAAAAgFAAAFAwQHDyb/AwAAAwAAAOIEAwBvBQEAMAUEEQAAAABvBQQAMAUECQEAAACMBV4BMAUEKwIAAADiBQcAbwYIADAGBREAAAAAbwYJADAGBboFAAAAjAYDADAGBW0GAAAAjAYBADAGBSsCAAAA4gYKAG8HCwAwBwYRAAAAAG8HDAAwBwa6BQAAAIwHAQAwBwYrAgAAAMUDBAQBAAAAggMCAA0DAQMCAwMFAwABAgMEAwUDBgUEAAUGAgMHAwgFAwAFAgMJAwoAEwsBGAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAFAAAAAAJAAABAgA7owAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQMAEgYAAABNAgPvBwAAAJ8BAgKkAgUAAABAQE0GABIGAAAATQUGxggAAABNBAW7CQAAAE0DBG4KAAAAnwICAqQDBQAAAEBATQgAEgYAAABNBwgcCwAAAE0GB7UMAAAATQUGjA0AAABNBAXxDgAAAJ8DAgL/BAMAAAAAAIwFCAcwBQTdDwAAAP8FAAADAAAAjAZkAIwH+gCMCPQBxQUGBAEAAAAwBQTwEAAAAG8FEQAwBQTyEgAAAMAFEwAwBQQIFAAAAIIEAgAVAwwEAAAAQAMNAw4DDwQAAEBAAxADEQMSAxMDFAMVAxYDFwMYAxkDGgJmZmZmZmYkQAMbBgADCwEAAQABGAACAAAAAAACAAAAAAAAAQAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAwACAAABAAAAAAAAAAADAAADAAAJAQAAAAABaiiUtITSWIZY7P4g0bQR48CN88zgKBvPz6kH0HDBWpP4Yy2fN/s76A==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
require(v1.Shared.Data.Builders.LootPoolBuilder)
require(v1.Shared.Framework.Utilities.Math.GetRandomWeightedItem)
return {
    ["RefreshPeriod"] = 1800,
    ["PrizeScores"] = { 100, 250, 500 },
    ["PointsPerSecond"] = 10.2,
    ["GetPrizes"] = function(_, _, _) --[[Function name: GetPrizes, line 19]]
        return {
            {
                ["Type"] = "Currency",
                ["Currency"] = "Coins",
                ["Amount"] = 350
            },
            {
                ["Type"] = "Potion",
                ["Name"] = "Lucky",
                ["Level"] = 3,
                ["Amount"] = 1
            },
            {
                ["Type"] = "Powerup",
                ["Name"] = "Mystery Box",
                ["Amount"] = 1
            }
        }
    end
}