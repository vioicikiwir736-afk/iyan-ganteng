--[[                                                                                          
                                                                                          
                                                                                          
                                          .:--:..                                         
                                   .:=+****++++====-:.                                    
                                :=*##**==--------------:.                                 
                             :=####*=-:::::::::..  .......:.                              
                          .-*###*++=-:::......:.......    ....                            
                        .+*####**#**=--:::...........:..     .:.                          
                       =+**#####**=-:....::-::--=-:......  ...::.                         
                      -=**####**=----===-:..:::.. .....   ..:::::.                        
                     :*++**#**=----+**===-:.=+-.      ..    .::::....                     
                    .=*+**++=+#%@@@@@@%*=-:+++=.   :*%@%#+=-..... .:.                     
                    =###*==*%@@@@@@@@@@@*+*#+:.:  -%@@@@@@@@@#- .  ...                    
                   =*%%#+=#%@@@@@@@@@@@@@#++#*= .-%@@@@@@@@@@@@%-..:.:.                   
                  :**#%#+=%%@@@@@@@@@@@@@#*@@@@+:+@@@@@@@@@@@@@@#.-=...                   
                  =**#%*+=#%@@@@@@@@@@@@#=%@@@@%=+@@@@@@@@@@@@@@+ .-: ..                  
                  ***#%**+*%@@@@@@@@@@@%=%%@@@@@#-+#@@@@@@@@@@@@-  :::..                  
                 .++*##+##+++++**+*#*++-+%@@@@@@@*   :=+###%@@%+. ..::::                  
                  ****+***=::---.:====+=%@@@@@@@@#..  :-. .::    . ...:.                  
                  =***+*+=--.::-:=%%*+*+%%@@#%@@@#.. :-*-.. .:         .                  
                  :**###*+=:....:-+****=#@@%==%@@=.. ..  ..       . ....                  
                  .**#%%#+=:-=-:::-=**#=--*#-.:...:.     .-----.......                    
                   +*#%@@@@%%@@#*=-=+*=-:===:. ....:. ..::=*#*+====**-                    
                   =###%%@@@@@@@%++++=-+=+-:--... .....::#%#%%%%%%%+=:                    
                    =#%%%@@@@@@@@%**%++*=*-:=+::......:.***#@@#*##%=-..                   
                     +##%##@@@@@@%###.:+ *- ==  #.-= -..*###@%:*@#-+=:                    
                     =######@%@@@*+=*:+#-#=:+-.:- -.  .:%@%##+.=+::=::                    
                     +####*#%@@@@***##@@@%@@@@@@#*#==. :@@@@#: ::.-:.                     
                     .**##*##@@@@@@@@@@@%@@@@@@@@++*##*#@@%@@: :.:. .                     
                       -+*+***%@@@@@@@@%@@@@@@@@@@%%%%%@@%%%%..:....                      
                          -#*-**#%%%%@@%%@@@@@@@@@##%@%%%#%@+ ...-                        
                          -#*--*##*####*####*++===**++=-=*+=.. .                          
                          -*#**#%%%%*+%=+#=++*=*-+-+.:-==..:.. .                          
                          :##*##**#%#*%+**+*=+=*-+=+--..  ......                          
                          .##***##*****-=+=:-:-:-....   ......:.                          
                           +###**#*+*+==:::.. .::.      ......::                          
                            -#****#*#*+=--=-.        .=    ...                            
                             :******#*===+=-.          .. .:                              
                               :*#*##*+==+==-:.. ..    ....                               
                                 .+***+++++==--::..::..                                   
                                    :-=--::::..::..                                       
                                                                                          
                                                                                          
 ███████╗██╗     ██████╗ ██╗██████╗ ██╗   ██╗ ██████╗     ███╗   ███╗██╗   ██╗███████╗██╗ ██████╗ 
██╔════╝██║     ██╔══██╗██║██╔══██╗╚██╗ ██╔╝██╔═══██╗    ████╗ ████║██║   ██║██╔════╝██║██╔════╝ 
█████╗  ██║     ██████╔╝██║██████╔╝ ╚████╔╝ ██║   ██║    ██╔████╔██║██║   ██║███████╗██║██║     
██╔══╝  ██║     ██╔═══╝ ██║██╔═══╝   ╚██╔╝  ██║   ██║    ██║╚██╔╝██║██║   ██║╚════██║██║██║     
███████╗███████╗██║     ██║██║        ██║   ╚██████╔╝    ██║ ╚═╝ ██║╚██████╔╝███████║██║╚██████╗
╚══════╝╚══════╝╚═╝     ╚═╝╚═╝        ╚═╝    ╚═════╝     ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝ ╚═════╝                                                                                         
 ]]local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local rng = Random.new()

local LocalizationService = game:GetService("LocalizationService")

local localeId = "en-us"
pcall(function()
	localeId = string.lower(LocalizationService.RobloxLocaleId)
end)
if localeId == "" or localeId == "en-us" then
	pcall(function()
		localeId = string.lower(player.LocaleId)
	end)
end

local lang = (localeId:sub(1, 2) == "id") and "id" or "en"

local TEXT = {
	id = {
		welcome = "Selamat datang User",
		starting = "Memulai...",
		steps = {
			"Memulai...",
			"Menyiapkan antarmuka...",
			"Menghubungkan ke server...",
			"Mengunduh script...",
			"Hampir selesai...",
			"Selesai!",
		},
		tips = {
			"Tip: Follow Tiktok: @elpiyoh @kyystarboyzz",
			"Tip: Simpan Music Favorit Anda.",
			"Tip: Terima kasih sudah memakai Elpiyo Music Player!",
			"Tip: Script ini dibuat KEYLESS!",
		},
		failed = "Gagal memuat, coba lagi.",
	},
	en = {
		welcome = "Welcome User",
		starting = "Starting...",
		steps = {
			"Starting...",
			"Preparing interface...",
			"Connecting to server...",
			"Downloading script...",
			"Almost done...",
			"Done!",
		},
		tips = {
			"Tip: Follow Tiktok: @elpiyoh @kyystarboyzz",
			"Tip: Your favorite playlists can be saved.",
			"Tip: Thanks for using Elpiyo Music Player!",
			"Tip: This script is KEYLESS!",
		},
		failed = "Failed to load, please try again.",
	},
}
local L = TEXT[lang]

local LOADER_URL = "https://flowauth.net/v1/loaders/elpiyo-and-kyy.lua"
local MUSIC_ID = "rbxassetid://128869390289960"

local gui = Instance.new("ScreenGui")
gui.Name = "ElpiyoLoading"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 999
gui.Parent = playerGui

local root = Instance.new("CanvasGroup")
root.Size = UDim2.fromScale(1, 1)
root.BackgroundColor3 = Color3.fromRGB(5, 5, 15)
root.BorderSizePixel = 0
root.GroupTransparency = 1
root.Parent = gui

-- Background gradient (nebula)
local bgGrad = Instance.new("UIGradient")
bgGrad.Rotation = 90
bgGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(4, 4, 18)),
	ColorSequenceKeypoint.new(0.55, Color3.fromRGB(18, 10, 50)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 30, 70)),
})
bgGrad.Parent = root

local stars = Instance.new("Frame")
stars.Size = UDim2.fromScale(1, 1)
stars.BackgroundTransparency = 1
stars.Parent = root

for _ = 1, 110 do
	local s = rng:NextInteger(1, 3)
	local star = Instance.new("Frame")
	star.Size = UDim2.fromOffset(s, s)
	star.Position = UDim2.fromScale(rng:NextNumber(), rng:NextNumber())
	star.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	star.BackgroundTransparency = 0.9
	star.BorderSizePixel = 0
	star.Parent = stars
	Instance.new("UICorner", star).CornerRadius = UDim.new(1, 0)

	TweenService:Create(star, TweenInfo.new(
		rng:NextNumber(1, 2.5), Enum.EasingStyle.Sine, Enum.EasingDirection.InOut,
		-1, true, rng:NextNumber(0, 2)
		), { BackgroundTransparency = rng:NextNumber(0, 0.3) }):Play()
end

local alive = true
task.spawn(function()
	while alive do
		task.wait(rng:NextNumber(2, 5))
		if not alive then break end
		local x, y = rng:NextNumber(0.1, 0.9), rng:NextNumber(0, 0.4)
		local streak = Instance.new("Frame")
		streak.Size = UDim2.fromOffset(140, 2)
		streak.AnchorPoint = Vector2.new(0.5, 0.5)
		streak.Position = UDim2.fromScale(x, y)
		streak.Rotation = 30
		streak.BackgroundColor3 = Color3.new(1, 1, 1)
		streak.BorderSizePixel = 0
		streak.Parent = stars
		local g = Instance.new("UIGradient")
		g.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(1, 0),
		})
		g.Parent = streak
		local t = TweenService:Create(streak, TweenInfo.new(0.9, Enum.EasingStyle.Quad), {
			Position = UDim2.fromScale(x + 0.25, y + 0.3),
			BackgroundTransparency = 1,
		})
		t:Play()
		t.Completed:Once(function() streak:Destroy() end)
	end
end)

for _ = 1, 25 do
	task.spawn(function()
		while alive do
			local p = Instance.new("Frame")
			local size = rng:NextInteger(3, 7)
			p.Size = UDim2.fromOffset(size, size)
			p.Position = UDim2.fromScale(rng:NextNumber(), 1.05)
			p.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
			p.BackgroundTransparency = 0.6
			p.BorderSizePixel = 0
			p.Parent = stars
			Instance.new("UICorner", p).CornerRadius = UDim.new(1, 0)
			local dur = rng:NextNumber(6, 12)
			local t = TweenService:Create(p, TweenInfo.new(dur, Enum.EasingStyle.Linear), {
				Position = UDim2.fromScale(p.Position.X.Scale + rng:NextNumber(-0.05, 0.05), -0.05),
				BackgroundTransparency = 1,
			})
			t:Play()
			task.wait(dur)
			p:Destroy()
			task.wait(rng:NextNumber(0, 3))
		end
	end)
end

local main = Instance.new("Frame")
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.fromScale(0.5, 0.5)
main.Size = UDim2.fromOffset(800, 600)
main.BackgroundTransparency = 1
main.Parent = root

local uiScale = Instance.new("UIScale")
uiScale.Parent = main

local function updateScale()
	local v = workspace.CurrentCamera.ViewportSize
	uiScale.Scale = math.clamp(math.min(v.X / 800, v.Y / 600), 0.5, 1.3)
end
updateScale()
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateScale)

local function circle(parent, size, pos)
	local f = Instance.new("Frame")
	f.AnchorPoint = Vector2.new(0.5, 0.5)
	f.Size = UDim2.fromOffset(size, size)
	f.Position = pos
	f.BackgroundTransparency = 1
	f.Parent = parent
	Instance.new("UICorner", f).CornerRadius = UDim.new(1, 0)
	return f
end

local center = UDim2.fromOffset(400, 185)

local glow = circle(main, 250, center)
glow.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
glow.BackgroundTransparency = 0.85
TweenService:Create(glow, TweenInfo.new(1.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
	Size = UDim2.fromOffset(290, 290),
	BackgroundTransparency = 0.95,
}):Play()

local ring = circle(main, 224, center)
local ringStroke = Instance.new("UIStroke")
ringStroke.Thickness = 4
ringStroke.Color = Color3.new(1, 1, 1)
ringStroke.Parent = ring
local ringGrad = Instance.new("UIGradient")
ringGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 200, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 80, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 255)),
})
ringGrad.Parent = ringStroke
TweenService:Create(ringGrad, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1), {
	Rotation = 360,
}):Play()

local profile = Instance.new("ImageLabel")
profile.AnchorPoint = Vector2.new(0.5, 0.5)
profile.Size = UDim2.fromOffset(200, 200)
profile.Position = center
profile.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
profile.Parent = main
Instance.new("UICorner", profile).CornerRadius = UDim.new(1, 0)

task.spawn(function()
	local ok, img = pcall(function()
		return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
	end)
	if ok then profile.Image = img end
end)

TweenService:Create(profile, TweenInfo.new(1.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
	Size = UDim2.fromOffset(206, 206),
}):Play()

local welcome = Instance.new("TextLabel")
welcome.AnchorPoint = Vector2.new(0.5, 0.5)
welcome.Position = UDim2.fromOffset(400, 325)
welcome.Size = UDim2.fromOffset(500, 24)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Gotham
welcome.TextSize = 18
welcome.TextColor3 = Color3.fromRGB(180, 200, 230)
welcome.Text = L.welcome .. player.DisplayName
welcome.Parent = main

local title = Instance.new("TextLabel")
title.AnchorPoint = Vector2.new(0.5, 0.5)
title.Position = UDim2.fromOffset(400, 365)
title.Size = UDim2.fromOffset(700, 44)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBlack
title.TextSize = 38
title.Text = "ELPIYO MUSIC PLAYER"
title.TextColor3 = Color3.new(1, 1, 1)
title.Parent = main

local titleGrad = Instance.new("UIGradient")
titleGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 120, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(190, 240, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 120, 255)),
})
titleGrad.Parent = title
task.spawn(function()
	while alive do
		titleGrad.Offset = Vector2.new(-1, 0)
		local t = TweenService:Create(titleGrad, TweenInfo.new(1.6, Enum.EasingStyle.Linear), { Offset = Vector2.new(1, 0) })
		t:Play()
		t.Completed:Wait()
	end
end)

local eq = Instance.new("Frame")
eq.AnchorPoint = Vector2.new(0.5, 0.5)
eq.Position = UDim2.fromOffset(400, 425)
eq.Size = UDim2.fromOffset(126, 36)
eq.BackgroundTransparency = 1
eq.Parent = main

for i = 1, 11 do
	local bar = Instance.new("Frame")
	bar.AnchorPoint = Vector2.new(0, 1)
	bar.Position = UDim2.fromOffset((i - 1) * 12, 36)
	bar.Size = UDim2.fromOffset(6, 8)
	bar.BackgroundColor3 = Color3.fromRGB(0, 190, 255)
	bar.BorderSizePixel = 0
	bar.Parent = eq
	Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)
	local g = Instance.new("UIGradient")
	g.Rotation = 90
	g.Color = ColorSequence.new(Color3.fromRGB(170, 100, 255), Color3.fromRGB(0, 200, 255))
	g.Parent = bar

	task.spawn(function()
		while alive do
			local t = TweenService:Create(bar, TweenInfo.new(rng:NextNumber(0.15, 0.35), Enum.EasingStyle.Sine), {
				Size = UDim2.fromOffset(6, rng:NextInteger(6, 36)),
			})
			t:Play()
			t.Completed:Wait()
		end
	end)
end

local status = Instance.new("TextLabel")
status.Position = UDim2.fromOffset(190, 460)
status.Size = UDim2.fromOffset(300, 20)
status.BackgroundTransparency = 1
status.Font = Enum.Font.GothamMedium
status.TextSize = 14
status.TextXAlignment = Enum.TextXAlignment.Left
status.TextColor3 = Color3.fromRGB(190, 210, 240)
status.Text = L.starting
status.Parent = main

local percent = Instance.new("TextLabel")
percent.Position = UDim2.fromOffset(410, 460)
percent.Size = UDim2.fromOffset(200, 20)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.GothamBold
percent.TextSize = 14
percent.TextXAlignment = Enum.TextXAlignment.Right
percent.TextColor3 = Color3.new(1, 1, 1)
percent.Text = "0%"
percent.Parent = main

local track = Instance.new("Frame")
track.AnchorPoint = Vector2.new(0.5, 0)
track.Position = UDim2.fromOffset(400, 488)
track.Size = UDim2.fromOffset(420, 8)
track.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
track.BackgroundTransparency = 0.88
track.BorderSizePixel = 0
track.Parent = main
Instance.new("UICorner", track).CornerRadius = UDim.new(1, 0)

local fill = Instance.new("Frame")
fill.Size = UDim2.fromScale(0, 1)
fill.BackgroundColor3 = Color3.new(1, 1, 1)
fill.BorderSizePixel = 0
fill.Parent = track
Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)

local fillGrad = Instance.new("UIGradient")
fillGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 200, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 90, 255)),
})
fillGrad.Parent = fill

local tips = L.tips
local tip = Instance.new("TextLabel")
tip.AnchorPoint = Vector2.new(0.5, 0.5)
tip.Position = UDim2.fromOffset(400, 540)
tip.Size = UDim2.fromOffset(600, 20)
tip.BackgroundTransparency = 1
tip.Font = Enum.Font.Gotham
tip.TextSize = 13
tip.TextColor3 = Color3.fromRGB(140, 160, 200)
tip.Text = tips[1]
tip.Parent = main

task.spawn(function()
	local i = 1
	while alive do
		task.wait(2.5)
		if not alive then break end
		i = i % #tips + 1
		local o = TweenService:Create(tip, TweenInfo.new(0.3), { TextTransparency = 1 })
		o:Play(); o.Completed:Wait()
		tip.Text = tips[i]
		TweenService:Create(tip, TweenInfo.new(0.3), { TextTransparency = 0 }):Play()
	end
end)

local target, display = 0, 0
local failedFlag = false
local steps = {
	{ 0, L.steps[1] },
	{ 25, L.steps[2] },
	{ 50, L.steps[3] },
	{ 75, L.steps[4] },
	{ 90, L.steps[5] },
	{ 100, L.steps[6] },
}

local conn = RunService.Heartbeat:Connect(function(dt)
	display += (target - display) * math.min(1, dt * 6)
	fill.Size = UDim2.fromScale(math.clamp(display / 100, 0, 1), 1)
	percent.Text = math.floor(display + 0.5) .. "%"
	if failedFlag then return end
	for i = #steps, 1, -1 do
		if display >= steps[i][1] - 0.5 then
			status.Text = steps[i][2]
			break
		end
	end
end)

local finished = false
task.spawn(function()
	while not finished and target < 90 do
		target = math.min(90, target + rng:NextNumber(2, 6))
		task.wait(rng:NextNumber(0.2, 0.5))
	end
end)

local music = Instance.new("Sound")
music.SoundId = MUSIC_ID
music.Volume = 1
music.Looped = true
music.Parent = SoundService

task.spawn(function()
	if not music.IsLoaded then
		local t = 0
		while not music.IsLoaded and t < 5 do
			t += task.wait()
		end
	end
	music.TimePosition = 156
	music:Play()
end)

TweenService:Create(root, TweenInfo.new(0.6), { GroupTransparency = 0 }):Play()

local loaded, loadOk, loadErr = false, true, nil
task.spawn(function()
	loadOk, loadErr = pcall(function()
		loadstring(game:HttpGet(LOADER_URL))()
	end)
	loaded = true
end)

local startTime = os.clock()
while not loaded or os.clock() - startTime < 3 do
	task.wait(0.1)
end

finished = true
if loadOk then
	target = 100
else
	warn("[Elpiyo] Gagal memuat script:", loadErr)
	failedFlag = true
	status.Text = L.failed
end
task.wait(1.2)

alive = false
TweenService:Create(root, TweenInfo.new(1), { GroupTransparency = 1 }):Play()
TweenService:Create(music, TweenInfo.new(1.5), { Volume = 0 }):Play()

task.wait(1.5)
conn:Disconnect()
music:Stop()
music:Destroy()
gui:Destroy()
