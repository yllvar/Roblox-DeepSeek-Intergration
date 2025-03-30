local callDeepSeek = require(game:GetService("ServerScriptService"):WaitForChild("DeepSeekHelper"))

-- Example prompt with improved structure
local prompt = [[
Generate a Roblox Part with these SPECIFIC properties:
{
    "Size": {"X":5,"Y":1,"Z":5},
    "Position": {"X":0,"Y":10,"Z":0},
    "Color": {"R":0,"G":1,"B":0},
    "Name": "AISpinningPart",
    "Anchored": true,
    "Behavior": "Spin"
}]]

-- ... rest of the original code ...