uid = game.Players.LocalPlayer.userId
plist = {"Sunday", "1299452235"}
if uid == plist then
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Afyadh/Kronos-Hub/main/afy.lua'))()
else
  game.Players.LocalPlayer:Kick('Not whitelisted by afy')
end
