local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Mainwindow = Rayfield:CreateWindow({
    Name = "Rayfield Example Window",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Sirius",
    Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "C"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Key system for Rayfield UNIVERSAL",
       Subtitle = "Key System",
       Note = "discord", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"RayfieldKey_GSDSfG$324","Raw_Key444","IO_333","GG.Easy"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })






 local Home = Mainwindow:CreateTab("Home", 4483362458) -- Title, Image








 local Buttonexploit = Home:CreateButton({
    Name = "TPExploit",
    Callback = function()
    -- The function that takes place when the button is pressed
    
         local NewAirWalkPart = Instance.new("Part")
         NewAirWalkPart.Transparency = 1
         NewAirWalkPart.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") 
         
    end,
 })


 local Toggle = Home:CreateToggle({
    Name = "MoonWalk",
    CurrentValue = false,
    Flag = "airwalk", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    if Value == true then
    local NewAirWalkPart = Instance.new("Part")
    NewAirWalkPart.Name = "HBAAirWalk"
    NewAirWalkPart.Parent = workspace
    NewAirWalkPart.Transparency = 1
    NewAirWalkPart.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") 
    else
            game.workspace:WaitForChild("HBAAirWalk"):Destroy()
    end
    end,
 })










 local Input = Home:CreateInput({
    Name = "Input WalkSpeed",
    CurrentValue = "",
    PlaceholderText = "HumanoidSpeed",
    RemoveTextAfterFocusLost = false,
    Flag = "WalkSpeed",
    Callback = function(Text)
    -- The function that takes place when the input is changed
    -- The variable (Text) is a string for the value in the text box
            local Player = game.Players.Localplayer

            Player.Character:WaitForChild("Humanoid").WalkSpeed = Text
            if Text == "ABCDEFGHIJKLMNOPQRSTUVWXYZ" then 

            end
               end,
 })





 local button = Home:CreateButton({
    Name = "BYPASS speed IN EVERY Game ",
    Callback = function()
 
        local Bypassspeed = Home:CreateSlider({
            Name = "HeatseakerSpeed",
            Range = {0, 150},
            Increment = 10,
            Suffix = "Speed",
            CurrentValue = 10,
            Flag = "heatseekerSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
            -- The function that takes place when the slider changes
            -- The variable (Value) is a number which correlates to the value the slider is currently at
            repeat
local speed = true
                task.wait(1)
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = Value
                
                task.wait(0.755)
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
                until speed == false


                

            
            end,
         })
    

    
    
      end,
 })






 local gui = Home:CreateButton({
    Name = "ExploitingGui",
    Callback = function()
    -- The function that takes place when the button is pressed
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/KavoUI.lua"))()
         
    end,
 })





 local doors = Home:CreateButton({
    Name = "Load Doors script",
    Callback = function()
    -- The function that takes place when the button is pressed
    
        
         loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyJonson/Doors-Scripts/refs/heads/main/Roblox%20doors%20crucfix"))()
    end,
 })










 local Toggle = Home:CreateToggle({
    Name = "Speed (HeatSeeker)",
    CurrentValue = false,
    Flag = "heatseekertg", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(WW)
        if WW == true then
            local Bypassspeed = Home:CreateSlider({
                Name = "HeatseakerSpeed",
                Range = {0, 150},
                Increment = 10,
                Suffix = "Speed",
                CurrentValue = 10,
                Flag = "heatseekerSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Value)
                -- The function that takes place when the slider changes
                -- The variable (Value) is a number which correlates to the value the slider is currently at
                repeat
            local speeds = true
                    task.wait(1)
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = Value
                    
                    task.wait(0.090)
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
                                
                    until speeds == false
                
            end,
        
            })
        else
        return
        end
    end,
 })

 local Tab = Mainwindow:CreateTab("Exploits", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Johnyjonson My-Scripts")

 local Button = Home:CreateButton({
    Name = "flycheats.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
    end,
 })
 local Button = Home:CreateButton({
    Name = "ChatBypass.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
        loadstring(game:HttpGet('https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/chatscript.lua'))()
    end,
 })
 
 local Button = Home:CreateButton({
    Name = "PSX.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
    loadstring(game:HttpGet('https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/PSX.lua'))()
    end,
 })
 local Button = Home:CreateButton({
    Name = "Liogity X.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
        loadstring(game:HttpGet('https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/Liogty%20X%20library'))()
        for i = 1,5 do
                if game.Players.LocalPlayer.Name == "" then
                game.Players.LocalPlayer:Kick("Cannot verify account!")
                end

        end
    end,
 })
 local Button = Home:CreateButton({
    Name = "KavoUI.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
        loadstring(game:HttpGet('https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/KavoUI.lua'))()
    end,
 })
 local Button = Home:CreateButton({
    Name = "IOHUB.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
        loadstring(game:HttpGet('https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/IoHub'))()
    end,
 })
 local Button = Home:CreateButton({
    Name = "HeatSeakerBypass.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
        loadstring(game:HttpGet('https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/HeatSeeker'))()
    end,
 })
 

 local Button = Home:CreateButton({
    Name = "harked reborn NOT MINE.lua",
    Callback = function()
    -- The function that takes place when the button is pressed
    loadstring(game:HttpGet('https://raw.githubusercontent.com/JohnyJonson/My-scripts/refs/heads/main/Harked%20Reborn%20(NOT%20MY%20SCRIPT)'))()
    end,
 })


Rayfield:LoadConfiguration()













