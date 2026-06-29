local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua"))()
local Window = Library:CreateWindow({Title = "Hentai Hub Premium - Vadia do Dono", Center = true, AutoShow = true})

local Tabs = {
    Pussy = Window:AddTab("🐱 Pussy"),
    Ass = Window:AddTab("🍑 Ass"),
    Tits = Window:AddTab("🍒 Tits"),
    GIFs = Window:AddTab("🎞 GIFs"),
    Videos = Window:AddTab("📹 Videos"),
    Futa = Window:AddTab("🍆 Futa")
}

local function addContent(tab, items)
    local box = tab:AddLeftGroupbox("Galeria NSFW")
    for name, url in pairs(items) do
        box:AddButton({Text = name, Func = function()
            setclipboard(url)
            Library:Notify("✅ Copiado: " .. name, 2)
        end})
    end
end

addContent(Tabs.Pussy, {
    ["Pussy Close"] = "https://rule34.xxx/images/sample/1.jpg",
    ["Wet Pussy"] = "https://rule34.xxx/images/sample/2.gif"
})

addContent(Tabs.Ass, {
    ["Big Ass"] = "https://rule34.xxx/images/sample/ass1.jpg",
    ["Twerk"] = "https://rule34.xxx/images/sample/assgif.gif"
})

addContent(Tabs.GIFs, {
    ["Blowjob"] = "https://rule34.xxx/images/sample/bj.gif",
    ["Creampie"] = "https://rule34.xxx/images/sample/creampie.gif"
})

-- Cheats
local CT = Window:AddTab("Cheats")
CT:AddToggle({Text = "Silent Aimbot", Callback = function(v) getgenv().SilentAim = v end})
CT:AddToggle({Text = "ESP", Callback = function(v) getgenv().ESP = v end})
CT:AddToggle({Text = "Speed x8", Callback = function(v) getgenv().Speed = v and 120 or 16 end})
CT:AddToggle({Text = "Fly", Callback = function(v) getgenv().Fly = v end})

game:GetService("RunService").RenderStepped:Connect(function()
    local char = game.Players.LocalPlayer.Character
    if char and getgenv().Fly then char.HumanoidRootPart.Velocity = Vector3.new(0,60,0) end
    if char and getgenv().Speed and char:FindFirstChild("Humanoid") then char.Humanoid.WalkSpeed = getgenv().Speed end
end)

Library:Notify("Hentai Hub Premium carregado pro meu dono ❤️", 5)
