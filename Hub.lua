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
local Section = Tab:NewSection("Made by a*_a*****2")
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

local Tab = Window:NewTab("U3BB")
local Section = Tab:NewSection("Misc")
Section:NewButton("No Attacks", "Simply delete the bosses attacks, basically immortal", function()
    local Workspace = game:GetService("Workspace")
local Debris = game:GetService("Debris")

local function hasHumanoid(instance)
    return instance:FindFirstAncestorWhichIsA("Model") and instance:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") ~= nil
end

local function onChildAdded(child)
    if child:IsA("BasePart") and not hasHumanoid(child) then
        -- Adiciona o objeto à lista de Debris para remoção rápida
        Debris:AddItem(child, 0)  -- O segundo parâmetro é o tempo antes de remover (0 remove imediatamente)
        print("Objeto sem Humanoid deletado:", child:GetFullName())
    end
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

Section:NewButton("Kill Aura (Close Range)", "Just attack and you will hit the boss", function()
    local x = 10
    local y = 10
    local z = 10
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
            if parent and parent:FindFirstChild("Humanoid") and parent:FindFirstChild("HumanoidRootPart") and parent.Name ~= player.Name then
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
            nearestHumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -x / 1.8)
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

Section:NewButton("Kill Aura (Mid Range)", "Just attack and you will hit the boss", function()
    local x = 50
    local y = 50
    local z = 50
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
            if parent and parent:FindFirstChild("Humanoid") and parent:FindFirstChild("HumanoidRootPart") and parent.Name ~= player.Name then
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
            nearestHumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -x / 1.8)
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

Section:NewButton("Kill Aura (Long Range)", "Just attack and you will hit the boss", function()
    local x = 100
    local y = 100
    local z = 100
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
            if parent and parent:FindFirstChild("Humanoid") and parent:FindFirstChild("HumanoidRootPart") and parent.Name ~= player.Name then
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
            nearestHumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -x / 1.8)
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
Section:NewButton("Boss Health Bar", "Simply a bar like a boss fight.", function()
-- Referências necessárias
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local runService = game:GetService("RunService")

-- Função para criar a barra de saúde
local function createHealthBar(parent, position)
    local healthBarBackground = Instance.new("Frame")
    healthBarBackground.Size = UDim2.new(0.3, 0, 0.05, 0)
    healthBarBackground.Position = position
    healthBarBackground.BackgroundColor3 = Color3.new(0, 0, 0)
    healthBarBackground.Parent = parent

    local healthBar = Instance.new("Frame")
    healthBar.Size = UDim2.new(1, 0, 1, 0)
    healthBar.BackgroundColor3 = Color3.new(1, 0, 0)
    healthBar.Parent = healthBarBackground

    local healthLabel = Instance.new("TextLabel")
    healthLabel.Size = UDim2.new(1, 0, 1, 0)
    healthLabel.Position = UDim2.new(0, 0, 0, 0)
    healthLabel.BackgroundTransparency = 1
    healthLabel.TextColor3 = Color3.new(1, 1, 1)
    healthLabel.TextScaled = true
    healthLabel.Parent = healthBarBackground

    return healthBarBackground, healthBar, healthLabel
end

-- Criar GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local healthBarBackground1, healthBar1, healthLabel1 = createHealthBar(screenGui, UDim2.new(0.35, 0, 0.05, 0))
local healthBarBackground2, healthBar2, healthLabel2 = createHealthBar(screenGui, UDim2.new(0.35, 0, 0.12, 0))

-- Função para encontrar os dois Humanoids mais próximos
local function getTwoNearestHumanoids()
    local humanoids = {}
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Parent.Name ~= player.Name then
            table.insert(humanoids, v)
        end
    end

    table.sort(humanoids, function(a, b)
        local distanceA = (a.Parent.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
        local distanceB = (b.Parent.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
        return distanceA < distanceB
    end)

    return humanoids[1], humanoids[2]
end

-- Atualizar as barras de saúde no evento Heartbeat
runService.Heartbeat:Connect(function()
    local nearestHumanoid1, nearestHumanoid2 = getTwoNearestHumanoids()

    if nearestHumanoid1 then
        if nearestHumanoid1.Health > 0 then
            local healthFraction1 = nearestHumanoid1.Health / nearestHumanoid1.MaxHealth
            healthBar1.Size = UDim2.new(healthFraction1, 0, 1, 0)
            healthLabel1.Text = string.format("%d/%d", nearestHumanoid1.Health, nearestHumanoid1.MaxHealth)
            healthBarBackground1.Visible = true
        else
            healthBarBackground1.Visible = false
        end
    else
        healthBarBackground1.Visible = false
    end

    if nearestHumanoid2 then
        if nearestHumanoid2.Health > 0 then
            local healthFraction2 = nearestHumanoid2.Health / nearestHumanoid2.MaxHealth
            healthBar2.Size = UDim2.new(healthFraction2, 0, 1, 0)
            healthLabel2.Text = string.format("%d/%d", nearestHumanoid2.Health, nearestHumanoid2.MaxHealth)
            healthBarBackground2.Visible = true
        else
            healthBarBackground2.Visible = false
        end
    else
        healthBarBackground2.Visible = false
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

local Tab = Window:NewTab("GUI Part 2")
local Section = Tab:NewSection("GUI Part 2")
Section:NewButton("Part 2", "Just click this shitass button", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/MyStupidHubs/Hub2/main/Hub2',true))()
end)
