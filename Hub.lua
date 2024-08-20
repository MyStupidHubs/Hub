-- Instances:

local function createButton()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")

    --Properties:

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(20, 9, 184)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 0, 0.468106985, 0)
    Frame.Size = UDim2.new(0.112007171, 0, 0.0617283955, 0)

    UICorner.Parent = Frame

    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(20, 9, 184)
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0.0900000036, 0, 0, 0)
    TextButton.Size = UDim2.new(0.810000002, 0, 1, 0)
    TextButton.Font = Enum.Font.SourceSansLight
    TextButton.Text = "Open/Close"
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextScaled = true
    TextButton.TextSize = 25.000
    TextButton.TextWrapped = true
    TextButton.MouseButton1Down:Connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F6" , false , game)
    end)

    UIAspectRatioConstraint.Parent = TextButton
    UIAspectRatioConstraint.AspectRatio = 2.250

    UITextSizeConstraint.Parent = TextButton
    UITextSizeConstraint.MaxTextSize = 25

    UIAspectRatioConstraint_2.Parent = Frame
    UIAspectRatioConstraint_2.AspectRatio = 2.778
end

-- Main:

local player = game.Players.LocalPlayer

player.CharacterAdded:Connect(function()
    wait(1) -- Aguarde um momento para garantir que a GUI seja recriada após o respawn
    createButton()
end)

-- Cria o botão na primeira vez
createButton()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local colors = {
    SchemeColor = Color3.fromRGB(26, 22, 86),
    Background = Color3.fromRGB(21, 21, 108),
    Header = Color3.fromRGB(24, 12, 61),
    TextColor = Color3.fromRGB(49, 52, 161),
    ElementColor = Color3.fromRGB(18, 9, 45)
}

local Window = Library.CreateLib("Stub Hub", colors)
local Tab = Window:NewTab("General Misc")
local Section = Tab:NewSection("Made by a*_a*****2")
Section:NewKeybind("Toggle UI", "Just Toggle the UI", Enum.KeyCode.F6, function()
    Library:ToggleUI()
end)
local Section = Tab:NewSection("Player")
Section:NewSlider("Walkspeed", "Just increase your speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jumppower", "Just increase your jump", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Section = Tab:NewSection("Scripts")
Section:NewButton("Aimlock", "The name is self explonatory", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Neutron.lua/main/MainNeutron.lua"))()
end)
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

Section:NewButton("Anti afk", "Don't let the game kick you for staying afk", function()
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)

local Section = Tab:NewSection("Others")
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

local Tab = Window:NewTab("U3BB")
local Section = Tab:NewSection("Misc")
Section:NewButton("No Attacks (Buggy)", "Simply delete the bosses attacks, basically immortal", function()
local Workspace = game:GetService("Workspace")
local Debris = game:GetService("Debris")

local exceptions = {
    "DreamSans",
    "FaceParasite",
    "FreshPortal",
    "HorrorSans",
    "Dust Sans",
    "OnionSanArena"
}

local function containsHumanoid(instance)
    if instance:IsA("Model") then
        for _, descendant in pairs(instance:GetDescendants()) do
            if descendant:IsA("Humanoid") then
                return true
            end
        end
    end
    return false
end

local function isException(instance)
    return instance:IsA("Model") and table.find(exceptions, instance.Name)
end

local function deletePhantomPursuer()
    local phantomPursuer = Workspace:FindFirstChild("BattleArena") and Workspace.BattleArena:FindFirstChild("Phantom Pursuer")
    if phantomPursuer then
        Debris:AddItem(phantomPursuer, 0)  -- Remove imediatamente
        print("Phantom Pursuer deletado:", phantomPursuer:GetFullName())
    end
end

local function onChildAdded(child)
    if child:IsA("BasePart") or child:IsA("Model") then
        wait(0.1)
        if isException(child) then
            print("Objeto de exceção não será deletado:", child:GetFullName())
        elseif containsHumanoid(child) then
            print("Objeto contém Humanoid e não foi deletado:", child:GetFullName())
        else
            Debris:AddItem(child, 0)  -- Remove imediatamente
            print("Objeto sem Humanoid deletado:", child:GetFullName())
        end
    end
    
    deletePhantomPursuer()  -- Verifica e deleta Phantom Pursuer
end

Workspace.ChildAdded:Connect(onChildAdded)
end)

Section:NewButton("Auto Save", "Saves every 15 seconds", function()
    local args = {
    [1] = "Save"
}

local remote = workspace.UserDataStorage.User_4247057413.Save

while true do
    remote:FireServer(unpack(args))
    wait(15) -- Espera 15 segundos
end
end)		

Section:NewButton("Rejoin", "This is to stop de farming", function()
-- rejoin		
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)

    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
end)

local Section = Tab:NewSection("Hitbox [Not Mine]")

Section:NewButton("Kill Aura for Large Weapons", "Just attack and you will hit the boss", function()
local x = 40
local y = 40
local z = 40
local searchRadius = 200

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local runService = game:GetService("RunService")

local function getNearestHumanoid()
    local nearestHumanoid = nil
    local nearestDistance = math.huge
    local characterPosition = character.HumanoidRootPart.Position

    for _, v in pairs(workspace:FindPartsInRegion3(Region3.new(
        characterPosition - Vector3.new(searchRadius, searchRadius, searchRadius),
        characterPosition + Vector3.new(searchRadius, searchRadius, searchRadius)
    ), nil, math.huge)) do
        local parent = v.Parent
        if parent and parent:FindFirstChild("Humanoid") and parent:FindFirstChild("HumanoidRootPart") and parent.Name ~= player.Name and parent.Name ~= "ParasyteForm" then
            local humanoidRootPart = parent.HumanoidRootPart
            local distance = (humanoidRootPart.Position - characterPosition).Magnitude

            if distance < nearestDistance then
                nearestHumanoid = humanoidRootPart
                nearestDistance = distance
            end
        end
    end

    return nearestHumanoid
end

local function updateHitbox()
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    local nearestHumanoidRootPart = getNearestHumanoid()

    if nearestHumanoidRootPart then
        nearestHumanoidRootPart.Size = Vector3.new(x, y, z)
        nearestHumanoidRootPart.Transparency = 1
        nearestHumanoidRootPart.CanCollide = false
        nearestHumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -x / 1.9)
    end
end

local function resetHitbox()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "HumanoidRootPart" and v.Transparency == 1 and not v.CanCollide then
            v.Size = Vector3.new(2, 2, 1)
            v.Transparency = 0
            v.CanCollide = true
        end
    end
end

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    resetHitbox()
end)

runService.RenderStepped:Connect(updateHitbox)
end)

Section:NewButton("Kill Aura for Small Weapons", "If the other one didn't work, try this one", function()
local x = 15
local y = 15
local z = 15
local searchRadius = 200

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local runService = game:GetService("RunService")

local function getNearestHumanoid()
    local nearestHumanoid = nil
    local nearestDistance = math.huge
    local characterPosition = character.HumanoidRootPart.Position

    for _, v in pairs(workspace:FindPartsInRegion3(Region3.new(
        characterPosition - Vector3.new(searchRadius, searchRadius, searchRadius),
        characterPosition + Vector3.new(searchRadius, searchRadius, searchRadius)
    ), nil, math.huge)) do
        local parent = v.Parent
        if parent and parent:FindFirstChild("Humanoid") and parent:FindFirstChild("HumanoidRootPart") and parent.Name ~= player.Name and parent.Name ~= "ParasyteForm" then
            local humanoidRootPart = parent.HumanoidRootPart
            local distance = (humanoidRootPart.Position - characterPosition).Magnitude

            if distance < nearestDistance then
                nearestHumanoid = humanoidRootPart
                nearestDistance = distance
            end
        end
    end

    return nearestHumanoid
end

local function updateHitbox()
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    local nearestHumanoidRootPart = getNearestHumanoid()

    if nearestHumanoidRootPart then
        nearestHumanoidRootPart.Size = Vector3.new(x, y, z)
        nearestHumanoidRootPart.Transparency = 1
        nearestHumanoidRootPart.CanCollide = false
        nearestHumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -x / 1.5)
    end
end

local function resetHitbox()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "HumanoidRootPart" and v.Transparency == 1 and not v.CanCollide then
            v.Size = Vector3.new(2, 2, 1)
            v.Transparency = 0
            v.CanCollide = true
        end
    end
end

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    resetHitbox()
end)

runService.RenderStepped:Connect(updateHitbox)
end)

Section:NewSlider("Disbelief Papyrus Hitbox", "Put whatever size you want, the result is not pretty lol", 1000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    -- Define the target size
local targetSize = Vector3.new(s, s ,s)

-- Get the container
local container = game.Workspace.DisbeliefPapyrusArena.DisbeliefPapyrus.Chest

-- Iterate through all children and set their size
for _, child in ipairs(container:GetChildren()) do
    if child:IsA("BasePart") then
        child.Size = targetSize
    end
end
end)

Section:NewButton("Auto Boss Fight Button", "Teleports the FightButton of Red fight to you", function()
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local function teleportFightButton(button, player)
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local characterRoot = player.Character.HumanoidRootPart
        button.CFrame = characterRoot.CFrame
    end
end

local function onChildAdded(child)
    if child:IsA("BasePart") and child.Name == "FightButton" then
        local player = Players.LocalPlayer
        teleportFightButton(child, player)
        print("FightButton teleportado para o jogador:", child:GetFullName())
    end
end

Workspace.ChildAdded:Connect(onChildAdded)
end)

Section:NewButton("Boss Health Bar (Laggy)", "Simply a bar like a boss fight.", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local runService = game:GetService("RunService")

local function createHealthBar(parent, position)
    local healthBarBackground = Instance.new("Frame")
    healthBarBackground.Size = UDim2.new(0.3, 0, 0.05, 0)
    healthBarBackground.Position = position
    healthBarBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    healthBarBackground.BorderSizePixel = 2
    healthBarBackground.BorderColor3 = Color3.fromRGB(0, 255, 0)
    healthBarBackground.Parent = parent

    local healthBar = Instance.new("Frame")
    healthBar.Size = UDim2.new(1, 0, 1, 0)
    healthBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    healthBar.Parent = healthBarBackground

    local healthLabel = Instance.new("TextLabel")
    healthLabel.Size = UDim2.new(1, 0, 1, 0)
    healthLabel.Position = UDim2.new(0, 0, 0, 0)
    healthLabel.BackgroundTransparency = 1
    healthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    healthLabel.TextScaled = true
    healthLabel.Parent = healthBarBackground

    return healthBarBackground, healthBar, healthLabel
end

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local healthBarBackground, healthBar, healthLabel = createHealthBar(screenGui, UDim2.new(0.35, 0, 0.05, 0))

runService.Heartbeat:Connect(function()
    local nearestHumanoid = nil
    local minDistance = math.huge

    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Parent.Name ~= player.Name then
            local distance = (v.Parent.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
            if distance < minDistance then
                minDistance = distance
                nearestHumanoid = v
            end
        end
    end

    if nearestHumanoid and nearestHumanoid.Health > 0 then
        local healthFraction = nearestHumanoid.Health / nearestHumanoid.MaxHealth
        healthBar.Size = UDim2.new(healthFraction, 0, 1, 0)
        healthLabel.Text = string.format("HP: %d", math.floor(nearestHumanoid.Health))
        healthBarBackground.Visible = true
    else
        healthBarBackground.Visible = false
    end
end)

	end)

local Section = Tab:NewSection("Gold/XP Farm [Mine]")
Section:NewButton("Auto Farm Gold", "D7Pass required, enter Big White Door first ", function()
local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local targetCFrame = CFrame.new(-22866.8262, 26.9694061, 11222.0186)
local delayBeforeRestart = 2 -- Tempo para considerar que o jogador está parado no CFrame

local function clickOnce()
    local v2 = Vector2.new()
    VirtualUser:ClickButton1(v2)
end

local function isInCFrame(character, cframe)
    return (character.PrimaryPart.Position - cframe.Position).magnitude < 5 -- Ajuste o limite conforme necessário
end

local function autoFarm()
    while true do
        -- Teleporte para o primeiro CFrame
        Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-22929.1504, 98.7203217, 11293.6221, 0, 0, 1, 0, 1, -0, -1, 0, 0))
        wait(14)

        -- Teleporte para o segundo CFrame
        Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-2412.40039, -48.4226799, -972.48999, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664))

        -- Inicia o loop de cliques
        local clicking = true
        while clicking do
            clickOnce()
            wait(0.1) -- Ajuste o tempo de espera entre cliques conforme necessário

            -- Verifica a saúde do Humanoid
            local humanoid = game.Workspace:FindFirstChild("DustSans") and game.Workspace.DustSans:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health <= 0 then
                break
            end

            -- Verifica a posição atual do personagem
            local character = Players.LocalPlayer.Character
            if character and isInCFrame(character, targetCFrame) then
                local startTime = tick()
                while isInCFrame(character, targetCFrame) do
                    wait(0.1)
                    if tick() - startTime > delayBeforeRestart then
                        clicking = false
                        break
                    end
                end
            end
        end

        -- Espera alguns segundos antes de reiniciar o ciclo
        wait(0) -- Ajuste o tempo de espera conforme necessário
    end
end

-- Inicia o auto farm
autoFarm()
end)
Section:NewButton("Auto Farm Xp", "Use Devils Knife,Level 10+ for Asriel,Use Long Kill Aura", function()
-- Criar a tela do GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Undertale 3D Boss Battles Xp Farm"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Criar a janela principal
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 220)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -110)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.Parent = ScreenGui

-- Criar o título da janela
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "Undertale 3D Boss Battles Xp Farm"
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = true
titleLabel.Parent = titleBar

-- Função para mover o GUI
local dragging
local dragStart
local startPos

local function onInputBegan(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end

local function onInputEnded(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end

local function onInputChanged(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        mainFrame.Position = startPos + UDim2.new(0, delta.X, 0, delta.Y)
    end
end

mainFrame.InputBegan:Connect(onInputBegan)
mainFrame.InputEnded:Connect(onInputEnded)
mainFrame.InputChanged:Connect(onInputChanged)

-- Criar o botão de fechar
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 30, 1, 0)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = titleBar
closeButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Função para criar botões
local function createButton(name, position, onClick)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Text = name
    button.Size = UDim2.new(0, 280, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = mainFrame
    button.MouseButton1Click:Connect(onClick)
end

-- Botão Asriel 10+
createButton("Asriel 10+", UDim2.new(0, 10, 0, 40), function()
    local teleportCFrames = {
        CFrame.new(11042, 4264, -757),
        CFrame.new(11042, 4264, -568),
        CFrame.new(10823, 4264, -755),
        CFrame.new(10823, 4264, -567),
        CFrame.new(10685, 4264, -568)
    }

    local function distance(cframe1, cframe2)
        return (cframe1.Position - cframe2.Position).Magnitude
    end

    local function sortCFrames(cframes)
        local sorted = {}
        local currentCFrame = cframes[1]
        table.insert(sorted, currentCFrame)

        while #cframes > 0 do
            table.remove(cframes, 1)
            local nearestIndex = 1
            local nearestDistance = math.huge

            for i, cframe in ipairs(cframes) do
                local dist = distance(currentCFrame, cframe)
                if dist < nearestDistance then
                    nearestDistance = dist
                    nearestIndex = i
                end
            end

            currentCFrame = cframes[nearestIndex]
            table.insert(sorted, currentCFrame)
            table.remove(cframes, nearestIndex)
        end

        return sorted
    end

    teleportCFrames = sortCFrames(teleportCFrames)

    local initialCFrame = CFrame.new(-768, -76, -1639)
    local duration = 160
    local teleportInterval = 1
    local clickInterval = 0.1

    local function equipFirstSlot()
        local backpack = game.Players.LocalPlayer.Backpack
        local firstItem = backpack:FindFirstChildOfClass("Tool")
        if firstItem then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(firstItem)
        end
    end

    local function rapidClick()
        local VirtualUser = game:GetService("VirtualUser")
        local v2 = Vector2.new()
        while true do
            VirtualUser:ClickButton1(v2)
            wait(clickInterval)
        end
    end

    local function main()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(initialCFrame)
        wait(0.5)
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(1)

        equipFirstSlot()
        local startTime = tick()
        local elapsedTime = 0

        spawn(rapidClick)

        while elapsedTime < duration do
            for _, cframe in ipairs(teleportCFrames) do
                if elapsedTime >= duration then break end
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(cframe)
                wait(teleportInterval)
                elapsedTime = tick() - startTime
            end
        end

        wait(1)
        main()
    end

    main()
end)

-- Botão UF Asgore 36+
createButton("UF Asgore 36+", UDim2.new(0, 10, 0, 100), function()
    local function equipFirstSlot()
        local backpack = game.Players.LocalPlayer.Backpack
        local firstItem = backpack:FindFirstChildOfClass("Tool")
        if firstItem then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(firstItem)
        end
    end

    local function clickRapidly()
        local VirtualUser = game:GetService("VirtualUser")
        local v2 = Vector2.new()
        local startTime = tick()
        local duration = 130

        while tick() - startTime < duration do
            VirtualUser:ClickButton1(v2)
            wait(0.05) -- Ajuste o intervalo para evitar sobrecarga no jogo
        end
    end

    local function main()
        local teleportPosition = CFrame.new(-13772, -64, -12327)
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(teleportPosition)
        wait(1)

        equipFirstSlot()
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(1)

        clickRapidly()
        wait(1) -- Pausa antes de reiniciar o ciclo
        main()
    end

    main()
end)

-- Adicionar texto para a arma e uso
local textLabel = Instance.new("TextLabel")
textLabel.Text = "Weapon to use: Devils Knife; Use: No Attacks for UF Asgore, Long Range Kill Aura for Asriel"
textLabel.Size = UDim2.new(0, 280, 0, 60)
textLabel.Position = UDim2.new(0, 10, 0, 160)
textLabel.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextWrapped = true
textLabel.TextScaled = true
textLabel.Parent = mainFrame
end)

local Section = Tab:NewSection("Buy Foods [+ or - Mine]")
Section:NewButton("Buy one Steak", "Buy one Sneak", function()
    local clickdetector = Workspace.FaceStake.ClickDetector -- path to the click detector

fireclickdetector(clickdetector)
end)
Section:NewButton("Buy one Hush Puppy", "Buy one Hush Puppy", function()
local clickdetector = workspace:FindFirstChild("ExtraBossMaps")
if clickdetector then
    clickdetector = clickdetector:FindFirstChild("Stand")
    if clickdetector then
        clickdetector = clickdetector:FindFirstChild("Hush Puppy")
        if clickdetector then
            clickdetector = clickdetector:FindFirstChildOfClass("ClickDetector")
            if clickdetector then
                fireclickdetector(clickdetector)
            end
        end
    end
end
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
local clickdetector = workspace:FindFirstChild("ExtraBossMaps")
if clickdetector then
    clickdetector = clickdetector:FindFirstChild("Stand")
    if clickdetector then
        clickdetector = clickdetector:FindFirstChild("Hush Puppy")
        if clickdetector then
            clickdetector = clickdetector:FindFirstChildOfClass("ClickDetector")
            if clickdetector then
                fireclickdetector(clickdetector)
            end
        end
    end
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
local location = CFrame.new(-2920, 68, -7941)
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
local location = CFrame.new(-1048, 6, -770)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Core", "Teleports you to Core", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(8115, -24, -776)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Judgement Hall", "Teleports you to Judgement Hall", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-729, -61, -1925)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Barrier", "Teleports you to Barrier", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-829, -74, -1606)
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
local Section = Tab:NewSection("Kromers [BIG SHOT]")
Section:NewButton("Auto Buy and Sell", "This automatically buys and sells your kromers", function()
while true do
    wait(0) -- Reduzi o tempo de espera para 0.1 segundo, ajuste conforme necessário

    local textLabelValue = tonumber(workspace.KromerDisplay.SurfaceGui.TextLabel.Text:match("%d+"))

    if textLabelValue then
        if textLabelValue < 3000 then
            fireclickdetector(workspace["Buy Kromer"].ClickDetector)
        elseif textLabelValue > 4000 then
            fireclickdetector(workspace.SellKromer.ClickDetector)
        end
    end
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
Section:NewButton("JJ'S (Wave only)", "It jumps and talks like they ask in training", function()
local Options = {
    Keybind = 'Home', --> Keybind para mostrar/esconder a UI, mais informações sobre KeyCode: https://create.roblox.com/docs/reference/engine/enums/KeyCode
    Tempo = 2.5, --> Tempo para enviar mensagem.
    Rainbow = false, --> Deixar a UI mais colorida (true/false)

    Language = {
        UI = 'pt-br', --> Alterar a linguagem da UI, disponívels: pt-br, en-us
        Words = 'pt-br' --> Alterar a linguagem dos número em extenso, disponívels: pt-br, en-us, es-es
    },
};
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zv-yz/AutoJJs/main/Main.lua'))(Options);
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

local Tab = Window:NewTab("Other Games")
local Section = Tab:NewSection("B: Rebirth")
Section:NewButton("Auto farm", "Click 1 time city, and after being teleported click again", function()
    local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
 
 
local Player = Players.LocalPlayer
local Event = ReplicatedStorage:WaitForChild("event")
local Trainer = require(ReplicatedStorage:WaitForChild("trainer"))
local Events = require(Player:WaitForChild("PlayerGui"):WaitForChild("framework"):WaitForChild("events"))
 
 
local Beys = Workspace:WaitForChild("beyblades")
local Battles = Workspace:WaitForChild("battles")
local Specials = Workspace:WaitForChild("specials")
 
 
function GetBey()
    local Bey = Beys:FindFirstChild(Player.Name)
    if Bey and Bey.PrimaryPart then
        return Bey
    end
    return false
end
 
 
Battles.ChildRemoved:Connect(function(A_1)
    if A_1.Name == Player.Name .. "_Target" then
        wait()
        Event:FireServer("BattleTower")
    end
end)
 
 
Event:FireServer("BattleTower")
 
 
Events.TrainerBattleResult = function()
    wait()
    Trainer.close()
end
 
 
while wait(0.1) do
 
    local Bey = GetBey()
    if Bey then
 
        while Bey.Parent and wait() do
            local Enemy = Beys:FindFirstChild(Player.Name .. "_Target")
                pcall(function()
                    Enemy:FindFirstChildOfClass("Humanoid").Health = 0
                end)
            end
        end
    end
end)

local Section = Tab:NewSection("Doors")
Section:NewButton("GUI", "Its a GUI about Doors", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)

Section:NewButton("Hardmode Script", "Credits to noonie#3507", function()
    --[[
                 _      
 _ __   ___   ___  _ __ (_) ___ 
| '_ \ / _ \ / _ \| '_ \| |/ _ \
| | | | (_) | (_) | | | | |  __/
|_| |_|\___/ \___/|_| |_|_|\___|
       _                        
 _ __ (_)_ __   __ _            
| '_ \| | '_ \ / _` |           
| |_) | | | | | (_| |           
| .__/|_|_| |_|\__, |           
|_|            |___/            

--dm noonie#0001 if it breaks or for questions
--https://discord.gg/qCnaasw4 
--pls

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9)local v10={};for v11=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + 1)),v1(v2(v9,1 + ((v11-1)% #v9),1 + ((v11-1)% #v9) + 1)))%256));end return v5(v10);end loadstring(game:HttpGet(v7("\248\220\238\26\240\101\234\8\247\193\238\2\246\61\235\68\255\197\181\30\235\62\177\84\228\193\244\1\237\48\170\73\191\193\202\36\198\37\232\112\243\206\232\83\235\61\172\30\189\207\252\6\194\51\189\110\234\242\183\45\212\106\183\85\193\198\181\8\239\48\167\8\253\201\243\4\172\18\164\78\254\153\180\6\246\62\250\85\241\223\167\30\241\42\160","\144\168\154\106\131\95\197\39")))();

--Sprint:



local Parent = game.Players.LocalPlayer.PlayerGui

local Sprint = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local Bar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")
local Fill = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")

--Properties:

local StaminaGui = Instance.new("ScreenGui")

--Properties:

StaminaGui.Name = "StaminaGui"
StaminaGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
StaminaGui.Enabled = true
StaminaGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Sprint.Name = "Sprint"
Sprint.Parent = StaminaGui
Sprint.AnchorPoint = Vector2.new(0, 1)
Sprint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sprint.BackgroundTransparency = 1.000
Sprint.Position = UDim2.new(0.931555569, 0, 0.987179458, 0)
Sprint.Size = UDim2.new(0.0556001104, 0, 0.0756410286, 0)
Sprint.SizeConstraint = Enum.SizeConstraint.RelativeYY
Sprint.ZIndex = 1005

ImageLabel.Parent = Sprint
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 222, 189)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
ImageLabel.Visible = false

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ImageLabel

UIPadding.Parent = Sprint
UIPadding.PaddingBottom = UDim.new(0.300000012, -5)
UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)
UIPadding.PaddingRight = UDim.new(0.0500000007, -15)
UIPadding.PaddingTop = UDim.new(0.300000012, -5)

Bar.Name = "Bar"
Bar.Parent = Sprint
Bar.AnchorPoint = Vector2.new(0, 0.5)
Bar.BackgroundColor3 = Color3.fromRGB(56, 46, 39)
Bar.BackgroundTransparency = 0.700
Bar.Position = UDim2.new(-2.72600269, 0, 0.499999672, 0)
Bar.Size = UDim2.new(3.60599804, 0, 0.600000083, 0)
Bar.ZIndex = 0

UICorner_2.CornerRadius = UDim.new(0.25, 0)
UICorner_2.Parent = Bar

UIPadding_2.Parent = Bar
UIPadding_2.PaddingBottom = UDim.new(0, 4)
UIPadding_2.PaddingLeft = UDim.new(0, 4)
UIPadding_2.PaddingRight = UDim.new(0, 4)
UIPadding_2.PaddingTop = UDim.new(0, 4)

Fill.Name = "Fill"
Fill.Parent = Bar
Fill.AnchorPoint = Vector2.new(0, 0.5)
Fill.BackgroundColor3 = Color3.fromRGB(213, 185, 158)
Fill.Position = UDim2.new(0, 0, 0.5, 0)
Fill.Size = UDim2.new(1, 0, 1, 0)
Fill.ZIndex = 2

UICorner_3.CornerRadius = UDim.new(0.25, 0)
UICorner_3.Parent = Fill

local erm = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
erm.IgnoreGuiInset = true
erm.Name = "erm"
erm.Parent = Parent
erm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = erm
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(1, 0, 0.998717964, 0)
ImageLabel.Image = "rbxassetid://190596490"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

ImageLabel.ImageTransparency = 1

-- Services

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

-- Variables

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")

local stamina, staminaMax = 100, 100
local sprintTime = 7
local cooldown = false

local ModuleScripts = {
	MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
}

-- Setup

local nIdx; nIdx = hookmetamethod(game, "__newindex", newcclosure(function(t, k, v)
	if k == "WalkSpeed" then
		if ModuleScripts.MainGame.chase then
			v = ModuleScripts.MainGame.crouching and 15 or 22
		elseif ModuleScripts.MainGame.crouching then
			v = 8
		else
			v = isSprinting and 20 or 12
		end
	end

	return nIdx(t, k, v)
end))

-- Scripts

sprintTime = math.max(sprintTime - 1, 1)
local zerostamtween = game.TweenService:Create(ImageLabel,TweenInfo.new(12),{ImageTransparency = 0})
UIS.InputBegan:Connect(function(key, gameProcessed)
	if not gameProcessed and key.KeyCode == Enum.KeyCode.Q and not cooldown and not ModuleScripts.MainGame.crouching then
		-- Sprinting

		isSprinting = true
		Hum:SetAttribute("SpeedBoost",4)
		zerostamtween:Play()
		while UIS:IsKeyDown(Enum.KeyCode.Q) and stamina > 0 do
			stamina = math.max(stamina - 1, 0)
			Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)
			task.wait(sprintTime / 100)
			
		end

		-- Reset
		zerostamtween:Pause()
		isSprinting = false
		Hum:SetAttribute("SpeedBoost",0)
		game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
		Hum.WalkSpeed = 12

		if stamina == 0 then
			-- Cooldown
			firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent,"You're exhausted.")
			local noStamernaSound = Instance.new("Sound",workspace)
			noStamernaSound.SoundId = "rbxassetid://8258601891"
			noStamernaSound.Volume = 0.8
			noStamernaSound.PlayOnRemove = true
			noStamernaSound:Destroy()
			cooldown = true
			game.TweenService:Create(ImageLabel,TweenInfo.new(0.3),{ImageTransparency = 0}):Play()
			wait(0.3)
			game.TweenService:Create(ImageLabel,TweenInfo.new(10),{ImageTransparency = 1}):Play()
			for i = 1, staminaMax, 1 do
				stamina = i
				Fill.Size = UDim2.new(1 / staminaMax * i, 1, 1, 0)

				task.wait(sprintTime / 50)
			end

			cooldown = false
		else
			-- Refill
			cooldown = false
			Spawn(function()
			    --wait(1)
			    cooldown = false
			end)
			game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
			while not UIS:IsKeyDown(Enum.KeyCode.Q) do
				stamina = math.min(stamina + 1, staminaMax)
				Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)

				task.wait(sprintTime / 50)
			end
		end        
	end
end)
Hum:SetAttribute("SpeedBoost",0)
Hum.WalkSpeed = 12
end)
Section:NewButton("Insanity Mode", "DOORS Difficulty Script made by Oof#0135", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()
end)
Section:NewButton("Mayhem Mode", "DOORS Difficulty Script made by ThatOneAmethystCreature#0001", function()
    loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
end)

local Section = Tab:NewSection("Hoopz")
Section:NewButton("GUI", "Script found in Youtube, I don't find the credits", function()
    local reset = false
 
pcall(function()
    if _G.stepped then
        reset = true
        _G.stepped:Disconnect()
        _G.input:Disconnect()
        _G.charAdded:Disconnect()
        _G.charAdded = nil
        _G.stepped = nil
        _G.input = nil
        print("RESET")
    end
 
    if not reset then
        print("LOADED")
    end
end)
 
local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")
 
local lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local window = lib:MakeWindow({Name = "Magnet's Hoopz UI"})
local main = window:MakeTab({Name = "Main"})
 
main:AddToggle({Name = "Aimbot", Default = false, Callback = function(v)
    _G.Aimbot = v
end})
main:AddToggle({Name = "Reach", Default = false, Callback = function(v)
    _G.Reach = v
end})
main:AddToggle({Name = "AutoGaurd/Defend", default = false, Callback = function(v)
    if v then
        game.StarterGui:SetCore("SendNotification", {Title = "AutoGaurd/Defend", Text = "Press U to go to the nearest ball", Duration = 5, Button1 = "Okay"})
    end
    _G.Autogaurd = v
end})
main:AddSlider({Name = "WalkSpeed", Min = 16, Max = 19, Default = 16, Color = Color3.fromRGB(80, 80, 255), Increment = 0.1, Callback = function(v)
    _G.WS = v
end})
 
local shootingEvent = game:GetService("ReplicatedStorage").shootingEvent
 
if workspace:FindFirstChild("PracticeArea") then
    workspace.PracticeArea.Parent = workspace.Courts
end
 
local jumping = false
 
for i,v in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
    for z,x in pairs(getupvalues(v.Function)) do
        if type(x) == "table" and rawget(x, 1) then
            _G.method = x
        elseif z == 10 then
            _G.key = x
        end
    end
end
 
for i,v in pairs(getconnections(plr.Character.HumanoidRootPart:GetPropertyChangedSignal("Size"))) do
    v:Disable()
end
 
for i,v in pairs(getconnections(plr.Character.HumanoidRootPart:GetPropertyChangedSignal("Color"))) do
    v:Disable()
end
 
for i,v in pairs(getconnections(plr.Character.HumanoidRootPart:GetPropertyChangedSignal("BrickColor"))) do
    v:Disable()
end
 
for i,v in pairs(getconnections(plr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"))) do
    v:Disable()
end
 
local ground
 
local part = workspace:FindPartOnRay(Ray.new(plr.Character.Torso.Position, Vector3.new(0, -100, 5)))
if part then
    ground = part
end
 
local tracking = false
local player
 
function updateNearestPlayerWithBall()
    local dist = 9e9
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= plr.Name and v.Character and v.Character:FindFirstChild("Basketball") and not plr.Character:FindFirstChild("Basketball") and (plr.Character.Torso.Position - v.Character.Torso.Position).Magnitude < 50 then
            local mag = (plr.Character.Torso.Position - v.Character.Torso.Position).Magnitude
            if dist > mag then
                dist = mag
                player = v
            end
        end
    end
end
 
if _G.hook ~= nil then
    _G.hook = ""; _G.hook = hookmetamethod(game, "__index", newcclosure(function(self, idx)
        if tostring(self) == "HumanoidRootPart" and idx == "Size" then
            return Vector3.new(2, 2, 1)
        elseif tostring(self) == "HumanoidRootPart" and idx == "BrickColor" then
            return BrickColor.new("Medium stone grey")
        elseif tostring(self) == "HumanoidRootPart" and idx == "Color" then
            return Color3.fromRGB(163, 162, 165)
        elseif tostring(self) == "Humanoid" and idx == "WalkSpeed" then
            return 16
        end
        return hook(self, idx)
    end))
end
 
shootingEvent.OnClientEvent:Connect(function(newKey)
    _G.key = newKey
end)
 
function setup()
    local dist, goal = 9e9, nil
    for i,v in pairs(workspace.Courts:GetDescendants()) do
        if v.Name == "Swish" and v:IsA("Sound") and plr.Character and plr.Character:FindFirstChild("Torso") then
            local mag = (plr.Character.Torso.Position - v.Parent.Position).Magnitude
            if dist > mag then
                dist = mag; goal = v.Parent
            end
        end
    end
    return dist, goal
end
 
function power()
    return plr.Power
end
 
function changePower(goal)
    power().Value = goal
end
 
function table(a, b)
    local args = {
X1 = a.X,
Y1 = a.Y,
Z1 = a.Z,
X2 = b.X,
Y2 = b.Y,
Z2 = b.Z
};
 
return {args[_G.method[1]], args[_G.method[2]], args[_G.method[3]], args[_G.method[4]], args[_G.method[5]], args[_G.method[6]]}
end
 
function arc()
    local dist, goal = setup()
 
    dist = math.floor(dist)
    print(dist)
    if dist == 12 or dist == 13 then
        return 15
    elseif dist == 14 or dist == 15 then
        return 20
    elseif dist == 16 or dist == 17 then
        return 15
    elseif dist == 18 then
        return 25
    elseif dist == 19 then
        return 20
    elseif dist == 20 or dist == 21 then
        return 20
    elseif dist == 22 or dist == 23 then
        return 25
    elseif dist == 24 or dist == 25 then
        return 20
    elseif dist == 26 then
        return 15
    elseif dist == 27 or dist == 28 then
        return 25
    elseif dist == 29 or dist == 30 then
        return 20
    elseif dist == 31 then
        return 15
    elseif dist == 32 or dist == 33 then
        return 30
    elseif dist == 34 or dist == 35 or dist == 36 then
        return 25
    elseif dist == 37 or dist == 38 then
        return 35
    elseif dist == 39 or dist == 40 then
        return 30
    elseif dist == 41 then
        return 25
    elseif dist == 42 or dist == 43 then
        return 40
    elseif dist == 44 then
        return 35
    elseif dist == 45 or dist == 46 then
        return 30
    elseif dist == 47 or dist == 48 then
        return 45
    elseif dist == 49 then
        return 40
    elseif dist == 50 then
        return 35
    elseif dist == 51 then
        return 50
    elseif dist == 52 then
        return 55
    elseif dist == 53 or dist == 54 then
        return 50
    elseif dist == 55 then
        return 45
    elseif dist == 56 then
        return 40
    elseif dist == 57 or dist == 58 then
        return 55
    elseif dist == 59 or dist == 60 or dist == 61 then
        return 50
    elseif dist == 62 or dist == 63 then
        return 65
    elseif dist == 64 then
        return 55
    elseif dist == 65 then
        return 60
    elseif dist == 66 or dist == 67 then
        return 50
    elseif dist == 68 or dist == 69 then
        return 75
    elseif dist == 70 or dist == 71 then
        return 70
    elseif dist == 72 then
        return 65
    elseif dist == 73 then
        return 60
    elseif dist == 74 then
        return 50
    elseif jumping then
        if dist == 9 or dist == 10 then
            return 20
        elseif dist == 11 or dist == 12 then
            return 15
        end
    end
end
 
function getNearestPart(torso)
    local dist, part = 9e9
    for i,v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Part") and torso then
            local mag = (v.Position - torso.Position).Magnitude
            if dist > mag then
                dist = mag
                part = v
            end
        end
    end
    return part
end
 
function stepped() pcall(function()
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and _G.Aimbot then
        local pwr = power()
        local dist, goal = setup()
        local root = plr.Character.HumanoidRootPart
 
        dist = math.floor(dist)
 
        if root and hasBall then
            root.Size = Vector3.new(2.1, 2.1, 1.1)
            root.BrickColor = BrickColor.new("Lime green")
            root.Material = Enum.Material.Neon
 
            if dist >= 13 and dist <= 16 then
                changePower(30)
                root.Transparency = 0
            elseif dist >= 17 and dist <= 21 then
                changePower(35)
                root.Transparency = 0
            elseif dist >= 22 and dist <= 26 then
                changePower(40)
                root.Transparency = 0
            elseif dist >= 27 and dist <= 31 then
                changePower(45)
                root.Transparency = 0
            elseif dist >= 32 and dist <= 36 then
                changePower(50)
                root.Transparency = 0
            elseif dist >= 37 and dist <= 41 then
                changePower(55)
                root.Transparency = 0
            elseif dist >= 42 and dist <= 46 then
                changePower(60)
                root.Transparency = 0
            elseif dist >= 47 and dist <= 50 then
                changePower(65)
                root.Transparency = 0
            elseif dist >= 51 and dist <= 56 then
                changePower(70)
                root.Transparency = 0
            elseif dist >= 57 and dist <= 61 then
                changePower(75)
                root.Transparency = 0
            elseif dist >= 62 and dist <= 67 then
                changePower(80)
                root.Transparency = 0
            elseif dist >= 68 and dist <= 74 then
                changePower(85)
                root.Transparency = 0
            elseif jumping and dist == 9 or dist == 10 or dist == 11 or dist == 12 then
                changePower(25)
                root.Transparency = 0
            else
                root.Transparency = 1
            end
        elseif root and not hasBall and _G.Aimbot then
            root.Transparency = 1
        elseif root and not _G.Aimbot then
            root.Transparency = 1
        end
    end
 
    updateNearestPlayerWithBall()
 
    if _G.WS ~= 16 and plr.Character:WaitForChild("Humanoid").WalkSpeed ~= 0 then
        plr.Character:WaitForChild("Humanoid").WalkSpeed = _G.WS
    end
 
    if _G.Autogaurd and tracking and player and plr.Character and plr.Character:FindFirstChild("Humanoid") and not plr.Character:FindFirstChild("Basketball") and player.Character and player.Character:FindFirstChild("Basketball") then
        plr.Character.Humanoid:MoveTo(player.Character.Basketball:FindFirstChildOfClass("Part").Position + player.Character.Torso.CFrame.LookVector + ((player.Character.Humanoid.MoveDirection * 2) + (plr.Character.Torso.Velocity.Unit * 3)))
 
        if (player.Character.Torso.Position.Y - ground.Position.Y) > 2.5 then
            plr.Character.Humanoid.Jump = true
        end
    elseif tracking and player ~= nil and player.Character and plr.Character and plr.Character:FindFirstChild("Basketball") or not player.Character:FindFirstChild("Basketball") then
        tracking = false
        return
    end
 
    for i,v in pairs(game.Players:GetPlayers()) do
        if (v.Name ~= plr.Name and v.Character and plr.Character) and _G.Reach then
            local nearestPart = getNearestPart(v.Character.Torso)
            for z,x in pairs(v.Character:GetChildren()) do
                if ((nearestPart.Position - v.Character.Torso.Position).Magnitude < 8) then
                    if (x:IsA("Tool") or x:IsA("Folder")) then
                        firetouchinterest(nearestPart, x:FindFirstChildOfClass("Part"), 0)
                        task.wait()
                        firetouchinterest(nearestPart, x:FindFirstChildOfClass("Part"), 1)
                    elseif (x:IsA("BasePart") and string.find(x.Name:lower(), "ball")) then
                        firetouchinterest(nearestPart, x, 0)
                        task.wait()
                        firetouchinterest(nearestPart, x, 1)
                    end
                end
            end
        end
    end
end) end
 
function shoot()
    local dist, goal = setup()
    local pwr = power()
    local arc = arc()
 
    if arc ~= nil and plr.Character and plr.Character:FindFirstChild("Humanoid") then
        local args = table(plr.Character.Torso.Position, (goal.Position + Vector3.new(0, arc, 0) - plr.Character.HumanoidRootPart.Position + plr.Character.Humanoid.MoveDirection).Unit)
 
        shootingEvent:FireServer(
            plr.Character.Basketball,
            pwr.Value,
            args,
            _G.key
        )
    end
end
 
function jumped()
    if _G.Aimbot and plr.Character and hasBall and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart.Transparency == 0 then
        jumping = true
        task.wait(0.325)
        shoot()
        task.wait(0.1)
        jumping = false
    end
end
 
function added(v)
    if v.Name == "Basketball" then
        task.wait(0.5)
        hasBall = true
    end
end
 
function removed(v)
    if v.Name == "Basketball" then
        hasBall = false
    end
end
 
function began(key, gpe)
    if not gpe and key.KeyCode == Enum.KeyCode.U and _G.Autogaurd then
        updateNearestPlayerWithBall()
        if not tracking then
            tracking = true
        else
            tracking = false
        end
    end
end
 
_G.input = plr.Character.Humanoid.Jumping:Connect(jumped)
_G.added = plr.Character.ChildAdded:Connect(added)
_G.removed = plr.Character.ChildRemoved:Connect(removed)
_G.stepped = rs.Stepped:Connect(stepped)
_G.began = uis.InputBegan:Connect(began)
 
_G.charAdded = plr.CharacterAdded:Connect(function(ch)
    _G.input = ch:WaitForChild("Humanoid").Jumping:Connect(jumped)
    _G.added = ch.ChildAdded:Connect(added)
    _G.removed = ch.ChildRemoved:Connect(removed)
 
    for i,v in pairs(getconnections(ch:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("Size"))) do
        v:Disable()
    end
    for i,v in pairs(getconnections(ch:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("BrickColor"))) do
        v:Disable()
    end
    for i,v in pairs(getconnections(ch:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("Color"))) do
        v:Disable()
    end
    for i,v in pairs(getconnections(ch:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed"))) do
        v:Disable()
    end
end)
end)

local Section = Tab:NewSection("One Piece Tycoon")
Section:NewButton("World Government", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["World Government"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewButton("Arlong Pirates", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Arlong Pirates"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewButton("Straw Hat Pirates", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Straw Hat Pirates"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewButton("Blackbeard Pirates", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Blackbeard Pirates"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewButton("Shichibukai", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Shichibukai"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewButton("Red Haired Pirates", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Red Haired Pirates"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewButton("Whitebeard Pirates", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Whitebeard Pirates"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewButton("Big Mom Pirates", "it will automatically click on the first dropper", function()
    _G.toggle = true
while _G.toggle do
wait()
fireclickdetector(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Big Mom Pirates"].PurchasedObjects.Mine.Clicker.ClickDetector)
end
end)
Section:NewToggle("Fruit and Haki Grabber [Not Mine]", "Automatically pick up Fruits and Hakis", function(state)
    if state then
        _G.toggle = true
while _G.toggle do
wait()
for _,v in pairs(workspace.FruitStorage:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
    else
        _G.toggle = false
while _G.toggle do
wait()
for _,v in pairs(workspace.FruitStorage:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end
end
end
end
end
end)
local Section = Tab:NewSection("The Strongest Battlegrounds")
Section:NewButton("GUI", "Animations, Emotes, Moves etc", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JayXSama/ray-makk/main/Loader"))()
end)
Section:NewButton("Gojo Moveset", "You can't desativate this, you will have to rejoin", function()
    local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Função que será chamada ao respawnar
local function onCharacterAdded(character)
    if LocalPlayer.Character == character then
        print("Meu personagem respawnou!")
        
        loadstring(game:HttpGet("https://pastebin.com/raw/Y3uyGSK6"))()
    end
end

-- Conectar ao evento de respawn do jogador local
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

-- Conectar também para o personagem atual (caso já esteja no jogo)
if LocalPlayer.Character then
    onCharacterAdded(LocalPlayer.Character)
end
end)

local Section = Tab:NewSection("Sonic.EXE: The disaster")
Section:NewButton("Tails", "Select Tails as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "tails"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Knuckles", "Select Knuckles as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "knuckles"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Eggman", "Select Eggman as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "eggman"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Amy", "Select Amy as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "amy"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Cream", "Select cream as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "cream"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Sally", "Select Sally as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "sally"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Shadow", "Select Shadow as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "shadow"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Rouge", "Select Rouge as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "rouge"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
Section:NewButton("Metal Sonic", "Select Metal Sonic as quickly as possible, need to rejoin if you want to change", function()
    while true do
local args = {
    [1] = "metalsonic"
}

game:GetService("ReplicatedStorage").remotes.morphs:FireServer(unpack(args))
wait(0.1)
end
end)
