local HttpService = game:GetService("HttpService")
local API_URL = "https://api.deepseek.com/v1/chat/completions"

local function callDeepSeek(prompt)
    local success, response = pcall(function()
        return HttpService:RequestAsync({
            Url = API_URL,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Authorization"] = "Bearer " .. (os.getenv("DEEPSEEK_KEY") or "YOUR_API_KEY")
            },
            Body = HttpService:JSONEncode({
                model = "deepseek-chat",
                messages = {{ role = "user", content = prompt }}
            })
        })
    end)

    -- ... rest of the original code ...
end

return callDeepSeek