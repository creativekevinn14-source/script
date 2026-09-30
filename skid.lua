local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Roblox Universal Hacks",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Roblox Universal Hacks",
   LoadingSubtitle = "by charcgert",
   ShowText = "Rayfield", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Ocean", 

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- Heartbeat = "https://www.sentivel.com/api/heartbeat/<your token>", -- Pings your Sentivel heartbeat while Rayfield is open, so you can see whether your script is running

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "PjSG6fKpw", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System",
      Subtitle = "Get your free key in the discord server!",
      Note = "https://discord.gg/PjSG6fKpw", -- Use this to tell the user how to get a key
      FileName = "KeyFileName11229", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"UHSkey"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image

Rayfield:Notify({
   Title = "Script Executed!",
   Content = "The script has been executed",
   Duration = 6.5,
   Image = 4483362458,
})

local Slider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {1, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", 
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
  end,
})

local Button = PlayerTab:CreateButton({
   Name = "TP tool",
   Callback = function()
   local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local tool = Instance.new("Tool")
tool.Name = "Teleport Tool"
tool.RequiresHandle = false
tool.Parent = player.Backpack

tool.Activated:Connect(function()
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local targetPos = mouse.Hit.Position + Vector3.new(0, 3, 0) -- Teleports slightly above the ground
        character.HumanoidRootPart.CFrame = CFrame.new(targetPos)
    end
end)

   end,
})
