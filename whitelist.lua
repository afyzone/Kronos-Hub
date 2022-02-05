local ids = {
    [1299452235] = true,
    [487598463] = true,
}
if ids[game.Players.LocalPlayer.UserId] then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Afyadh/Kronos-Hub/main/afy.lua'))()
elseif game.Players.LocalPlayer.UserId == 2225680749 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Afyadh/Kronos-Hub/main/do.lua'))()
else
  game.Players.LocalPlayer:Kick('Not whitelisted by afy')
end

if syn.request or http_request or request or http.request then
    local req = syn.request or http_request or request or http.request or nil
    if req ~= nil then
        for port=6463, 6472, 1 do
            local inv = "http://127.0.0.1:"..tostring(port).."/rpc?v=1"
            local http = game:GetService("HttpService")
            local t = {cmd = "INVITE_BROWSER", args = {["code"] = "DV9HeETUZn"}, nonce = string.lower(http:GenerateGUID(false))}
            local post = http:JSONEncode(t)
            req({Url = inv, Method = "POST", Body = post, Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"}})
        end
    end
end
