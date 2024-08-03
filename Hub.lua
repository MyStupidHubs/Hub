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

Section:NewButton("FE Telekinesis", "The name itself says what it is", function()
    -- Q & E - bring closer and further
-- R - Roates Block
-- T - Tilts Block
-- Y - Throws Block
local function a(b, c)
    local d = getfenv(c)
    local e =
        setmetatable(
        {},
        {__index = function(self, f)
                if f == "script" then
                    return b
                else
                    return d[f]
                end
            end}
    )
    setfenv(c, e)
    return c
end
local g = {}
local h = Instance.new("Model", game:GetService("Lighting"))
local i = Instance.new("Tool")
local j = Instance.new("Part")
local k = Instance.new("Script")
local l = Instance.new("LocalScript")
local m = sethiddenproperty or set_hidden_property
i.Name = "Telekinesis"
i.Parent = h
i.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
i.GripForward = Vector3.new(-0, -1, -0)
i.GripRight = Vector3.new(0, 0, 1)
i.GripUp = Vector3.new(1, 0, 0)
j.Name = "Handle"
j.Parent = i
j.CFrame = CFrame.new(-17.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1)
j.Orientation = Vector3.new(0, 180, 90)
j.Position = Vector3.new(-17.2635937, 15.4915619, 46)
j.Rotation = Vector3.new(-180, 0, -90)
j.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
j.Transparency = 1
j.Size = Vector3.new(1, 1.20000005, 1)
j.BottomSurface = Enum.SurfaceType.Weld
j.BrickColor = BrickColor.new("Really black")
j.Material = Enum.Material.Metal
j.TopSurface = Enum.SurfaceType.Smooth
j.brickColor = BrickColor.new("Really black")
k.Name = "LineConnect"
k.Parent = i
table.insert(
    g,
    a(
        k,
        function()
            wait()
            local n = script.Part2
            local o = script.Part1.Value
            local p = script.Part2.Value
            local q = script.Par.Value
            local color = script.Color
            local r = Instance.new("Part")
            r.TopSurface = 0
            r.BottomSurface = 0
            r.Reflectance = .5
            r.Name = "Laser"
            r.Locked = true
            r.CanCollide = false
            r.Anchored = true
            r.formFactor = 0
            r.Size = Vector3.new(1, 1, 1)
            local s = Instance.new("BlockMesh")
            s.Parent = r
            while true do
                if n.Value == nil then
                    break
                end
                if o == nil or p == nil or q == nil then
                    break
                end
                if o.Parent == nil or p.Parent == nil then
                    break
                end
                if q.Parent == nil then
                    break
                end
                local t = CFrame.new(o.Position, p.Position)
                local dist = (o.Position - p.Position).magnitude
                r.Parent = q
                r.BrickColor = color.Value.BrickColor
                r.Reflectance = color.Value.Reflectance
                r.Transparency = color.Value.Transparency
                r.CFrame = CFrame.new(o.Position + t.lookVector * dist / 2)
                r.CFrame = CFrame.new(r.Position, p.Position)
                s.Scale = Vector3.new(.25, .25, dist)
                wait()
            end
            r:remove()
            script:remove()
        end
    )
)
k.Disabled = true
l.Name = "MainScript"
l.Parent = i
table.insert(
    g,
    a(
        l,
        function()
            wait()
            tool = script.Parent
            lineconnect = tool.LineConnect
            object = nil
            mousedown = false
            found = false
            BP = Instance.new("BodyPosition")
            BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
            BP.P = BP.P * 1.1
            dist = nil
            point = Instance.new("Part")
            point.Locked = true
            point.Anchored = true
            point.formFactor = 0
            point.Shape = 0
            point.BrickColor = BrickColor.Black()
            point.Size = Vector3.new(1, 1, 1)
            point.CanCollide = false
            local s = Instance.new("SpecialMesh")
            s.MeshType = "Sphere"
            s.Scale = Vector3.new(.7, .7, .7)
            s.Parent = point
            handle = tool.Handle
            front = tool.Handle
            color = tool.Handle
            objval = nil
            local u = false
            local v = BP:clone()
            v.maxForce = Vector3.new(30000, 30000, 30000)
            function LineConnect(o, p, q)
                local w = Instance.new("ObjectValue")
                w.Value = o
                w.Name = "Part1"
                local x = Instance.new("ObjectValue")
                x.Value = p
                x.Name = "Part2"
                local y = Instance.new("ObjectValue")
                y.Value = q
                y.Name = "Par"
                local z = Instance.new("ObjectValue")
                z.Value = color
                z.Name = "Color"
                local A = lineconnect:clone()
                A.Disabled = false
                w.Parent = A
                x.Parent = A
                y.Parent = A
                z.Parent = A
                A.Parent = workspace
                if p == object then
                    objval = x
                end
            end
            function onButton1Down(B)
                if mousedown == true then
                    return
                end
                mousedown = true
                coroutine.resume(
                    coroutine.create(
                        function()
                            local C = point:clone()
                            C.Parent = tool
                            LineConnect(front, C, workspace)
                            while mousedown == true do
                                C.Parent = tool
                                if object == nil then
                                    if B.Target == nil then
                                        local t = CFrame.new(front.Position, B.Hit.p)
                                        C.CFrame = CFrame.new(front.Position + t.lookVector * 1000)
                                    else
                                        C.CFrame = CFrame.new(B.Hit.p)
                                    end
                                else
                                    LineConnect(front, object, workspace)
                                    break
                                end
                                wait()
                            end
                            C:remove()
                        end
                    )
                )
                while mousedown == true do
                    if B.Target ~= nil then
                        local D = B.Target
                        if D.Anchored == false then
                            object = D
                            dist = (object.Position - front.Position).magnitude
                            break
                        end
                    end
                    wait()
                end
                while mousedown == true do
                    if object.Parent == nil then
                        break
                    end
                    local t = CFrame.new(front.Position, B.Hit.p)
                    BP.Parent = object
                    BP.position = front.Position + t.lookVector * dist
                    wait()
                end
                BP:remove()
                object = nil
                objval.Value = nil
            end
            function onKeyDown(E, B)
                local E = E:lower()
                local F = false
                if E == "q" then
                    if dist >= 5 then
                        dist = dist - 10
                    end
                end
                if E == "r" then
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            return nil
                        end
                    end
                    BG = Instance.new("BodyGyro")
                    BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    BG.cframe = CFrame.new(object.CFrame.p)
                    BG.Parent = object
                    repeat
                        wait()
                    until object.CFrame == CFrame.new(object.CFrame.p)
                    BG.Parent = nil
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            H.Parent = nil
                        end
                    end
                    object.Velocity = Vector3.new(0, 0, 0)
                    object.RotVelocity = Vector3.new(0, 0, 0)
                    object.Orientation = Vector3.new(0, 0, 0)
                end
                if E == "e" then
                    dist = dist + 10
                end
                if E == "t" then
                    if dist ~= 10 then
                        dist = 10
                    end
                end
                if E == "y" then
                    if dist ~= 200 then
                        dist = 200
                    end
                end
                if E == "=" then
                    BP.P = BP.P * 1.5
                end
                if E == "-" then
                    BP.P = BP.P * 0.5
                end
            end
            function onEquipped(B)
                keymouse = B
                local I = tool.Parent
                human = I.Humanoid
                human.Changed:connect(
                    function()
                        if human.Health == 0 then
                            mousedown = false
                            BP:remove()
                            point:remove()
                            tool:remove()
                        end
                    end
                )
                B.Button1Down:connect(
                    function()
                        onButton1Down(B)
                    end
                )
                B.Button1Up:connect(
                    function()
                        mousedown = false
                    end
                )
                B.KeyDown:connect(
                    function(E)
                        onKeyDown(E, B)
                    end
                )
                B.Icon = "rbxasset://textures\\GunCursor.png"
            end
            tool.Equipped:connect(onEquipped)
        end
    )
)
for J, H in pairs(h:GetChildren()) do
    H.Parent = game:GetService("Players").LocalPlayer.Backpack
    pcall(
        function()
            H:MakeJoints()
        end
    )
end
h:Destroy()
for J, H in pairs(g) do
    spawn(
        function()
            pcall(H)
        end
    )
end
end)

Section:NewButton("Fates Admin", "Admin commands", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)
Section:NewButton("Infinity Yield", "Admin commands", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
 
Section:NewButton("Remote SPY", "Remote SPY", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'),true))()
end)

Section:NewButton("Hydroxide Tool", "Remote SPY", function()
    local owner = "Hosvile"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/MC-Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")
end)

Section:NewButton("Anti afk", "Don't let the game kick you for staying afk", function()
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)

Section:NewButton("Chat Bypass", "You can swear all you want lol", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/T4FEyvHH"))()
end)

Section:NewButton("Fling Punch", "Very Very Op", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'),true))()
end)

Section:NewButton("Click Fling", "Very Anonimous", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/dcd8a483a1ba00904cc3261a8299cfa1/raw/9a60d9c7c1f4749e6be2c27e2cdb80dec5cd8f2a/clickfling",true))()
end)

Section:NewButton("ESP", "Decent ESP", function()
    local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
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

local Section = Tab:NewSection("Undertale Legacy Mania")
Section:NewButton("Auto Food [Mine]", "Automatically buys the best food with the gold you have", function()
local args = {
    [1] = game:GetService("Lighting").Food.ButterscotchPie,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Lighting").Food.ButterscotchPie,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Lighting").Food.SuperHero,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Lighting").Food.LHero,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Lighting").Food.LHero,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Lighting").Food.LHero,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Lighting").Food.LHero,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Lighting").Food.MTTSteak,
    [2] = "Food"
}

game:GetService("Lighting").Buy:FireServer(unpack(args))
end)

local Tab = Window:NewTab("RPG Games")
local Section = Tab:NewSection("Everycyans Kit [MISC] [+ or - Mine]")
Section:NewButton("Get All Weapons", ">>>BUY<<< all weapon that your money can buy", function()
local RS = game:GetService("ReplicatedStorage")

for Index, Variable in pairs(RS.GameItems:GetChildren()) do
 game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(Variable.Name)
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
local Section = Tab:NewSection("Training [Mine]")
Section:NewButton("JJ'S", "It jumps and talks like they ask in training", function()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local Button = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
Frame.Position = UDim2.new(0.35, 0, 0.35, 0)
Frame.Size = UDim2.new(0.3, 0, 0.3, 0)
Frame.Active = true
Frame.Draggable = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.1, 0, 0.1, 0)
TextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBox.PlaceholderText = "Digite um número até 500"
TextBox.Font = Enum.Font.SourceSans
TextBox.TextScaled = true
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)

Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
Button.Position = UDim2.new(0.3, 0, 0.4, 0)
Button.Size = UDim2.new(0.4, 0, 0.2, 0)
Button.Text = "Contar"
Button.Font = Enum.Font.SourceSans
Button.TextScaled = true
Button.TextColor3 = Color3.fromRGB(255, 255, 255)

CloseButton.Parent = Frame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Position = UDim2.new(0.9, -20, 0, 5)
CloseButton.Size = UDim2.new(0.1, -5, 0.1, -5)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextScaled = true
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local numbers = {
    [1] = "UM", [2] = "DOIS", [3] = "TRÊS", [4] = "QUATRO", [5] = "CINCO", [6] = "SEIS", [7] = "SETE",
    [8] = "OITO", [9] = "NOVE", [10] = "DEZ", [11] = "ONZE", [12] = "DOZE", [13] = "TREZE", [14] = "QUATORZE",
    [15] = "QUINZE", [16] = "DEZESSEIS", [17] = "DEZESSETE", [18] = "DEZOITO", [19] = "DEZENOVE", [20] = "VINTE",
    [30] = "TRINTA", [40] = "QUARENTA", [50] = "CINQUENTA", [60] = "SESSENTA", [70] = "SETENTA", [80] = "OITENTA",
    [90] = "NOVENTA", [100] = "CEM", [200] = "DUZENTOS", [300] = "TREZENTOS", [400] = "QUATROCENTOS", [500] = "QUINHENTOS"
}

local function numberToWords(n)
    if numbers[n] then
        return numbers[n] .. " !"
    elseif n < 30 then
        return numbers[20] .. " E " .. numbers[n-20] .. " !"
    elseif n < 100 then
        local units = n % 10
        return numbers[n - units] .. (units > 0 and " E " .. numbers[units] or "") .. " !"
    elseif n < 200 then
        return "CENTO E " .. numberToWords(n - 100)
    elseif n < 1000 then
        local hundreds = math.floor(n / 100) * 100
        local remainder = n % 100
        return numbers[hundreds] .. (remainder > 0 and " E " .. numberToWords(remainder) or "") .. " !"
    end
end

Button.MouseButton1Click:Connect(function()
    local num = tonumber(TextBox.Text)
    if num and num > 0 and num <= 500 then
        for i = 1, num do
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(numberToWords(i), "All")
            local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
            wait(1.5) -- Increased delay between each number and jump
        end
    else
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Por favor, insira um número válido até 500", "All")
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
end)

local Tab = Window:NewTab("Ultra Power Tycoon")
local Section = Tab:NewSection("GUI [Not Mine]")
Section:NewButton("GUI", "Script found in V3rmillion, I don't find the credits", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0ultra", true))()
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

local Tab = Window:NewTab("Bear")
local Section = Tab:NewSection("Bear* Auto Farm [Mine]")
Section:NewButton("Auto Farm Coin", "Script fixed, now to enable or disable click E.", function()
local teleportEnabled = true
local teleportLocation = CFrame.new(243.389191, 10.4933968, -928.5, 0, 0, 1, 0, 1, -0, -1, 0, 0)

local function teleportPlayer(player)
    player.Character.HumanoidRootPart.CFrame = teleportLocation
end

game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        wait(1)
        if teleportEnabled then
            teleportPlayer(player)
        end
    end)
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)
    if input.KeyCode == Enum.KeyCode.E and not isTyping then
        teleportEnabled = not teleportEnabled
    end
end)

while true do
    wait()
    if teleportEnabled then
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Character then
                teleportPlayer(player)
            end
        end
    end
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

local Tab = Window:NewTab("Dimension 23")
local Section = Tab:NewSection("Remote [Mine]")
Section:NewButton("Spawn Skeletron", "Remote for Alien X's 3rd weapon", function()
    -- Script generated by SimpleSpy - credits to exx#9394

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Alien X's Duplication Staff").SpawnSkeleton:FireServer()

end)
Section:NewButton("Frost Breath", "Remote for Arctiguana's 2rd weapon", function()
    -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = Enum.KeyCode.Q
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arctiguana's Ice Shard Blade").Remote:FireServer(unpack(args))

end)

local Tab = Window:NewTab("Brookhaven RP")
local Section = Tab:NewSection("GUI [Not Mine]")
Section:NewButton("Brookhaven RP Troll", "It's a GUI that does everything in the game", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

local Tab = Window:NewTab("GUI Part 2")
local Section = Tab:NewSection("GUI Part 2")
Section:NewButton("Part 2", "Just click this shitass button", function()
    loadstring(game:HttpGet('https://github.com/MyStupidHubs/StubHub2/edit/main/StubHub2',true))()
end)
