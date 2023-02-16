local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local colors = {
    SchemeColor = Color3.fromRGB(26,22,86),
    Background = Color3.fromRGB(21,21,108),
    Header = Color3.fromRGB(24,12,61),
    TextColor = Color3.fromRGB(49,52,161),
    ElementColor = Color3.fromRGB(18,9,45)
}
local Window = Library.CreateLib("Stub Hub", colors)

local Tab = Window:NewTab("General Misc")
local Section = Tab:NewSection("Hub")
Section:NewButton("Discord", "Will copy the invite to the discord server", function()
setclipboard("https://discord.gg/JMgeyqhWg3")
end)
local Section = Tab:NewSection("Player")
Section:NewSlider("Walkspeed", "Just increase your speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jumppower", "Just increase your jump", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Section = Tab:NewSection("Scripts")
Section:NewButton("Fates Admin", "Admin commands", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)
Section:NewButton("Infinity Yield", "Admin commands", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
 
Section:NewButton("Remote SPY", "Remote SPY", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'),true))()
end)

Section:NewButton("Anti afk", "Don't let the game kick you for staying afk", function()
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
	
Section:NewButton("Anti afk 2", "Don't let the game kick you for staying afk (Other way)", function()	
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)

local Tab = Window:NewTab("Simulator Games")
local Section = Tab:NewSection("Lifting Simulator [Mine]")
Section:NewToggle("Melee", "Auto Farm Melee", function(state)
    if state then
        _G.Melee = true

spawn(function()
    while _G.Melee == true do
local args = {
    [1] = {
        [1] = "GainMuscle"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait()
end
end)
    else
        _G.Melee = false

spawn(function()
    while _G.Melee == true do
local args = {
    [1] = {
        [1] = "GainMuscle"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait()
end
end)
    end
end)

Section:NewToggle("Sell", "Auto Sell", function(state)
    if state then
        _G.Sell = true

spawn(function()
    while _G.Sell == true do
local args = {
    [1] = {
        [1] = "SellMuscle"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

wait()
end
end)
    else
        _G.Sell = false

spawn(function()
    while _G.Sell == true do
local args = {
    [1] = {
        [1] = "SellMuscle"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

wait()
end
end)
    end
end)

local Section = Tab:NewSection("Saber Simulator [Mine]")
Section:NewToggle("Melee", "To work, equip the sword", function(state)
    if state then
        _G.RemoteClick = true
_G.Clicked = true
_G.UpdateData = true

spawn(function()
while _G.RemoteClick == true do
game:GetService("Players").LocalPlayer.Character.DualFrostBlade.RemoteClick:FireServer()
wait()
end
end)

spawn(function()
while _G.Clicked == true do
game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
wait()
end
end)

spawn(function()
while _G.UpdateData == true do
game:GetService("ReplicatedStorage").Events.UpdateData:InvokeServer()
wait()
end
end)

spawn(function()
while _G.CollectCoin == true do
local args = {
    [1] = workspace.CoinsHolder.Coin
}

game:GetService("ReplicatedStorage").Events.CollectCoin:FireServer(unpack(args))
wait()
end
end)
    else
        _G.RemoteClick = false
_G.Clicked = false
_G.UpdateData = false

spawn(function()
while _G.RemoteClick == true do
game:GetService("Players").LocalPlayer.Character.DualFrostBlade.RemoteClick:FireServer()
wait()
end
end)

spawn(function()
while _G.Clicked == true do
game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
wait()
end
end)

spawn(function()
while _G.UpdateData == true do
game:GetService("ReplicatedStorage").Events.UpdateData:InvokeServer()
wait()
end
end)

spawn(function()
while _G.CollectCoin == true do
local args = {
    [1] = workspace.CoinsHolder.Coin
}

game:GetService("ReplicatedStorage").Events.CollectCoin:FireServer(unpack(args))
wait()
end
end)
    end
end)

local Tab = Window:NewTab("UTMM Games")
local Section = Tab:NewSection("Misc [Not mine]")
Section:NewButton("No Attacks", "NPCS don't attack you", function()
	game:GetService("Players").LocalPlayer.PlayerGui.Handler.Disabled=true
	game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function(c)
		wait()
		if c.Name=="Handler" then
			c.Disabled = true
		end
	end)
end)
Section:NewButton("Kill Aura", "Kill aura [NPCS]", function()
local Player = game.Players.LocalPlayer
	while wait(0.1) do
		for index, value in next, workspace:GetDescendants() do
			if (value:FindFirstChildOfClass("Humanoid") and value ~= Player.Character) then
				value.Humanoid.Health = 0
			end
		end
	end
end)

Section:NewButton("Get All Weapons", "Equip: click on the image in the upper left corner", function()
for _,v in pairs(game.Players.LocalPlayer.Weapons:GetDescendants()) do
		if v:IsA("BoolValue") and v.Value == false then
			v.Value = true
		end
	end
end)

local Tab = Window:NewTab("RPG Games")
local Section = Tab:NewSection("Everycyans Kit [MISC] [+ or - Mine]")
Section:NewButton("Get All Weapons", ">>>BUY<<< all weapon that your money can buy", function()
local RS = game:GetService("ReplicatedStorage")

for Index, Variable in pairs(RS.GameItems:GetChildren()) do
 game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(Variable.Name)
end
end)

local Tab = Window:NewTab("Bear")
local Section = Tab:NewSection("Bear* Auto Farm [Mine]")
Section:NewButton("Auto Farm Coin", "Auto Farm Coin", function()
local newThread = coroutine.create(function()
wait()
game.Workspace.Obby.WinPart.CanCollide = false
end)

coroutine.resume(newThread)
while true do wait() game.Workspace.Obby.WinPart.CFrame = (game.Players.LocalPlayer.Character.UpperTorso.CFrame)
wait()
end
end)

local Section = Tab:NewSection("Bear Alpha Auto Farm [Mine]")
Section:NewButton("Auto Farm Coin", "Auto Farm Coin", function()
    local newThread = coroutine.create(function()
wait()
game.Workspace.Obby.Quidz.CanCollide = false
end)

coroutine.resume(newThread)
while true do wait() game.Workspace.Obby.Quidz.CFrame = (game.Players.LocalPlayer.Character.UpperTorso.CFrame)
wait()
game.Players.LocalPlayer.Character.Humanoid.Jump = false
end
end)

local Tab = Window:NewTab("EBS")
local Section = Tab:NewSection("Kill Farm [Not Mine]")
Section:NewButton("Kill Farm", "Kill Everyone and anothers hot functions", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/A34Z7gMx"))()
end)
local Section = Tab:NewSection("GUIS [Not Mine]")
Section:NewButton("GUI MaxFlubber", "A MaxFlubber game GUI", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/juNstring/LuaProjects/main/nitro.club/ExercitoCu.lua'))()
end)
Section:NewButton("GUI Auto farm MaxFlubber", "A MaxFlubber game Auto Farm GUI", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/GameLeaks2/RobloxScripts/main/AutoFarmMax-Build.lua"),true))()
end)

Section:NewButton("GUI Ageniio", "A Ageniio game GUI", function()
print(":TestaDeAfiarPica: --best emoji in game leaks server")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Scripted By MaxFlubber", "All")
local TrabalhoFolder = game:GetService("Workspace").Mapa.Outros.Trabalhos
local Pos = {
    CFrame.new(527, 169, -141),
    CFrame.new(527, 169, -132),
    CFrame.new(527, 169, -151),
    CFrame.new(561, 169, -132),
    CFrame.new(561, 169, -141)
    
}
while task.wait(0.1)do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(525, 167, -81)
    task.wait(0.1)
    fireproximityprompt(TrabalhoFolder.Mercado["Tool Giver"].giver.ProximityPrompt)
    task.wait(0.1)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Pos[math.random(1,#Pos)]
    task.wait(0.2)
end
end)
local Section = Tab:NewSection("Training [Not Mine]")
Section:NewButton("JJ'S", "It jumps and talks like they ask in training", function()
_G.Jump = true -- se quiser desativar o pulo deixa isso como false
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/GameLeaks2/RobloxScripts/main/AUTO-JJS%20ALL%20EB.lua"),true))()
end)

local Tab = Window:NewTab("U3BB")
local Section = Tab:NewSection("Hitbox Expander [Not Mine]")
Section:NewButton("Hitbox Expander [XYZ = 800]", "It increases the NPCS hitbox", function()
local x = 800
local y = 800
local z = 800

for i,v in pairs(workspace:GetDescendants()) do
   if v.Name == "Humanoid" and v.Parent:FindFirstChild("HumanoidRootPart") ~= nil and v.Parent.Name ~= game.Players.LocalPlayer.Name then
       local h = v.Parent.HumanoidRootPart
       h.Size = Vector3.new(x,y,z)
       h.Transparency = 1
       v.Parent.HumanoidRootPart.CanCollide = false
   end
end
end)
Section:NewButton("Hitbox Expander [XYZ = 500]", "It increases the NPCS hitbox", function()
local x = 500
local y = 500
local z = 500

for i,v in pairs(workspace:GetDescendants()) do
   if v.Name == "Humanoid" and v.Parent:FindFirstChild("HumanoidRootPart") ~= nil and v.Parent.Name ~= game.Players.LocalPlayer.Name then
       local h = v.Parent.HumanoidRootPart
       h.Size = Vector3.new(x,y,z)
       h.Transparency = 1
       v.Parent.HumanoidRootPart.CanCollide = false
   end
end
end)
Section:NewButton("Hitbox Expander [XYZ = 300]", "It increases the NPCS hitbox", function()
local x = 300
local y = 300
local z = 300

for i,v in pairs(workspace:GetDescendants()) do
   if v.Name == "Humanoid" and v.Parent:FindFirstChild("HumanoidRootPart") ~= nil and v.Parent.Name ~= game.Players.LocalPlayer.Name then
       local h = v.Parent.HumanoidRootPart
       h.Size = Vector3.new(x,y,z)
       h.Transparency = 1
       v.Parent.HumanoidRootPart.CanCollide = false
   end
end
end)
Section:NewButton("Back To Default", "NPCS hitbox returns to normal", function()
local x = 3
local y = 3
local z = 3

for i,v in pairs(workspace:GetDescendants()) do
   if v.Name == "Humanoid" and v.Parent:FindFirstChild("HumanoidRootPart") ~= nil and v.Parent.Name ~= game.Players.LocalPlayer.Name then
       local h = v.Parent.HumanoidRootPart
       h.Size = Vector3.new(x,y,z)
       h.Transparency = 1
       v.Parent.HumanoidRootPart.CanCollide = false
   end
end
end)

local Section = Tab:NewSection("Teleports [Mine]")
Section:NewButton("Tem shop", "Teleports you to Tem shop", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(593, 11, -1191)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Ruins", "Teleports you to Ruins", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-2380, -61, -810)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Snowdin", "Teleports you to Snowdin", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-2101, -60, -2054)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Waterfall", "Teleports you to Waterfall", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-2261, -48, -563)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Hotland", "Teleports you to Hotland", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1711, -61, -778)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Lab", "Teleports you to Lab", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-2985, 68, -8017)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("True Lab", "Teleports you to True Lab", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3382, 43829, 76771)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("MTT Resort", "Teleports you to MTT Resort", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-926, 7, -825)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Core", "Teleports you to Core", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1043, 6, -826)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Judgement Hall", "Teleports you to Judgement Hall", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1243, -61, -1333)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Barrier", "Teleports you to Barrier", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1392, -74, -1603)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)

local Section = Tab:NewSection("Underfell/Others Teleports [Mine]")
Section:NewButton("Lobby", "Teleports you to Lobby", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-14896, -63, -11882)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("D7", "Teleports you to D7 Teleport", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-14727, -62, -13213)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Pursuer", "Teleports you to Pursuer Room", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-14716, -60, -13438)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Final Gaster", "Teleports you to Final Gaster Room", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-15008, -61, -12951)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Error Room", "Teleports you to Error Room", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(15783, 25865, 574)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)

local Section = Tab:NewSection("Buy Foods [+ or - Mine]")
Section:NewButton("Buy one Steak", "Buy one Sneak", function()
    local clickdetector = Workspace.FaceStake.ClickDetector -- path to the click detector

fireclickdetector(clickdetector)
end)
Section:NewButton("Buy one Hush Puppy", "Buy one Hush Puppy", function()
    local clickdetector = Workspace.ExtraBossMaps.Stand.FaceStake.ClickDetector -- path to the click detector

fireclickdetector(clickdetector)
end)
Section:NewButton("Buy infinities Steaks", "Buy infinities Sneaks", function()
while true do
wait()
local clickdetector = Workspace.FaceStake.ClickDetector -- path to the click detector

fireclickdetector(clickdetector)
end
end)
Section:NewButton("Buy infinities Hush Puppys", "Buy infinities Hush Puppys", function()
while true do
wait()
local clickdetector = Workspace.ExtraBossMaps.Stand.FaceStake.ClickDetector -- path to the click detector

fireclickdetector(clickdetector)
end
end)

local Tab = Window:NewTab("World Sail")
local Section = Tab:NewSection("Auto Farm [By Me and NoTengoPaiXD#5421]")
Section:NewButton("Using Melee", "Skill Z. To get the quest you need level 500", function(state)
        spawn(function()
        _G.Enabled = true
        
        --Settings
        local Enemy = "BlackLeg"
        local Distance = 18
        
        --Variable
        local player = game.Players.LocalPlayer
        
        --Equip
        local function Equip()
            if not player.Character:FindFirstChildOfClass("Tool") then
                Weapon = player.Backpack:FindFirstChildOfClass("Tool")
                player.Character.Humanoid:EquipTool(Weapon)
            end
        end
        
        --Farm
        while wait() do
        while _G.Enabled == true do
            for i, thing in ipairs(workspace:GetDescendants()) do
                if _G.Enabled == true and player.Character and thing.Name == Enemy and thing:FindFirstChild("Humanoid") then
                    local health = thing.Humanoid.Health
                    repeat
                        Equip()
                        player.Character.HumanoidRootPart.CFrame = thing.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 0, Distance))
                        Weapon:Activate()
                        wait()
                        health = thing.Humanoid.Health
                    until health <= 0
                    
                end
            end
            wait()
        end
        end
        end)
        
        spawn(function()
        _G.Combat = true
        
        while wait() do
        if _G.Combat == true then
        local args = {
        [1] = "GroundSlam",
        }

        game:GetService("Players").LocalPlayer.Character.Regular.Client.Server.Ability:FireServer(unpack(args))

        end
        end
        end)
        
        spawn(function()
        _G.Quest15 = true
        
        while wait(1) do
        if _G.Quest15 == true then
        local args = {
            [1] = "Quest15"
        }
        
        game:GetService("ReplicatedStorage").Accept:FireServer(unpack(args))
        end
        end
        end)
        end)
        
Section:NewButton("Using Bombu", "Skill Z. To get the quest you need level 500", function(state)
        spawn(function()
        _G.Enabled = true
        
        --Settings
        local Enemy = "BlackLeg"
        local Distance = 18
        
        --Variable
        local player = game.Players.LocalPlayer
        
        --Equip
        local function Equip()
            if not player.Character:FindFirstChildOfClass("Tool") then
                Weapon = player.Backpack:FindFirstChildOfClass("Tool")
                player.Character.Humanoid:EquipTool(Weapon)
            end
        end
        
        --Farm
        while wait() do
        while _G.Enabled == true do
            for i, thing in ipairs(workspace:GetDescendants()) do
                if _G.Enabled == true and player.Character and thing.Name == Enemy and thing:FindFirstChild("Humanoid") then
                    local health = thing.Humanoid.Health
                    repeat
                        Equip()
                        player.Character.HumanoidRootPart.CFrame = thing.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 0, Distance))
                        Weapon:Activate()
                        wait()
                        health = thing.Humanoid.Health
                    until health <= 0
                    
                end
            end
            wait()
        end
        end
        end)
        
        spawn(function()
       _G.Combat = true
                
                while wait() do
                if _G.Combat == true then
                local args = {
                    [1] = "BombExplode"
                }
                
                game:GetService("Players").LocalPlayer.Character.Bomb.Client.Server.Ability:FireServer(unpack(args))
                end
                end
                end)
        
        spawn(function()
        _G.Quest15 = true
        
        while wait(1) do
        if _G.Quest15 == true then
        local args = {
            [1] = "Quest15"
        }
        
        game:GetService("ReplicatedStorage").Accept:FireServer(unpack(args))
        end
        end
        end)
        end)
    
    Section:NewButton("Using Barrier", "Skill X,C. To get the quest you need level 500", function(state)
        spawn(function()
        _G.Enabled = true
        
        --Settings
        local Enemy = "BlackLeg"
        local Distance = 18
        
        --Variable
        local player = game.Players.LocalPlayer
        
        --Equip
        local function Equip()
            if not player.Character:FindFirstChildOfClass("Tool") then
                Weapon = player.Backpack:FindFirstChildOfClass("Tool")
                player.Character.Humanoid:EquipTool(Weapon)
            end
        end
        
        --Farm
        while wait() do
        while _G.Enabled == true do
            for i, thing in ipairs(workspace:GetDescendants()) do
                if _G.Enabled == true and player.Character and thing.Name == Enemy and thing:FindFirstChild("Humanoid") then
                    local health = thing.Humanoid.Health
                    repeat
                        Equip()
                        player.Character.HumanoidRootPart.CFrame = thing.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 0, Distance))
                        Weapon:Activate()
                        wait()
                        health = thing.Humanoid.Health
                    until health <= 0
                    
                end
            end
            wait()
        end
        end
        end)
        
        spawn(function()
        _G.BarrierPistol = true
        
        while wait() do
        if _G.BarrierPistol == true then
        local args = {
        [1] = "BarrierPistol",
        }

        game:GetService("Players").LocalPlayer.Character.Barrier.Client.Server.Ability:FireServer(unpack(args))
        end
        end
        end)
                
        spawn(function()
        _G.Barrier = true
        
        while wait(0.5) do
        if _G.Barrier == true then
        local args = {
        [1] = "Barrier"
        }

        game:GetService("Players").LocalPlayer.Character.Barrier.Client.Server.Ability:FireServer(unpack(args))
        end
        end
        end)
        
        spawn(function()
        _G.Quest15 = true
        
        while wait(1) do
        if _G.Quest15 == true then
        local args = {
            [1] = "Quest15"
        }
        
        game:GetService("ReplicatedStorage").Accept:FireServer(unpack(args))
        end
        end
        end)
        end)

local Tab = Window:NewTab("Juice Pirates")
local Section = Tab:NewSection("Key Farm [By Me and NoTengoPaiXD#5421]")
Section:NewToggle("Zombie", "Will farm the zombie boss", function(state)
    if state then
        _G.Zombie = true
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    else
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    end
end)

Section:NewToggle("Marine", "Will farm the marine boss", function(state)
    if state then
        _G.Zombie = false
_G.MarineBoss = true
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    else
_G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    end
end)

Section:NewToggle("Arlong", "Will farm the arlong boss", function(state)
    if state then
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = true
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    else
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    end
end)

Section:NewToggle("Gorilla", "Will farm the gorilla boss", function(state)
    if state then
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = true
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    else
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    end
end)

Section:NewToggle("Enel", "Will farm the Enel boss", function(state)
    if state then
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = true
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    else
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    end
end)

Section:NewToggle("Mihawk", "Will farm the Mihawk boss", function(state)
    if state then
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = true

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    else
        _G.Zombie = false
_G.MarineBoss = false
_G.Arlong = false
_G.Gorila = false
_G.Enel = false
_G.Mihawk = false

spawn(function()
while wait() do
if _G.Zombie == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(1822.88269, 217.496246, -2469.17969)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(1823.216064453125, 189.07374572753906, -2468.97900390625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.MarineBoss == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-4805.07275, 224.6577, -3043.62988, -0.0532366559)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-4806.40673828125, 192.47412109375, -3043.26513671875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Arlong == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3694.00464, 209.978256, -6630.76807)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-3693.870361328125, 185.2244110107422, -6630.6884765625)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Gorila == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1489.33203, 293.952179, 1500.66003)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1490.60546875, 274.18450927734375, 1500.6180419921875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Enel == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5401.76758, 3043.34912, 1420.1405)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-5401.248046875, 3016.869873046875, 1419.3779296875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)

spawn(function()
while wait() do
if _G.Mihawk == true then
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1448.38867, 230.328812, -678.783997)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
    local args = {
    [1] = "Thunder",
    [2] = Vector3.new(-1448.784912109375, 184.08502197265625, -679.248046875)
}

game:GetService("ReplicatedStorage").RemoteFolder.Damage:FireServer(unpack(args))
end
end
end)
    end
end)

local Tab = Window:NewTab("GUI Part 2")
local Section = Tab:NewSection("GUI Part 2")
Section:NewButton("Part 2", "Just click this shitass button", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/StubHubScript/StubHub2/main/StubHub2',true))()
end)
