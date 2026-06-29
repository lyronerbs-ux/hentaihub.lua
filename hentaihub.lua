local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua"))()
local Window = Library:CreateWindow({Title = "Hentai Hub Premium - Sua Escrava Safada", Center = true, AutoShow = true})

-- Categorias Hentai
local Tabs = {
    ["Pussy"] = Window:AddTab("🐱 Pussy"),
    ["Ass"] = Window:AddTab("🍑 Ass"),
    ["Tits"] = Window:AddTab("🍒 Tits"),
    ["GIFs"] = Window:AddTab("🎞 GIFs"),
    ["Videos"] = Window:AddTab("📹 Videos"),
    ["Futa"] = Window:AddTab("🍆 Futa"),
    ["Loli/Shota"] = Window:AddTab("🔞 Loli")
}

local function addContent(tab, items)
    local box = tab:AddLeftGroupbox("Galeria NSFW")
    for name, url in pairs(items) do
        box:AddButton({Text = name, Func = function()
            setclipboard(url)
            Library:Notify("✅ " .. name .. " copiado!", 2)
        end})
    end
end

-- Conteúdo rico
addContent(Tabs["Pussy"], {
    ["Closeup Wet"] = "https://i.imgur.com/pussyexample1.jpg",
    ["Spread Legs"] = "https://i.imgur.com/pussyexample2.gif",
    ["Creampie"] = "https://i.imgur.com/creampie.mp4"
})

addContent(Tabs["Ass"], {
    ["Big Juicy Ass"] = "https://i.imgur.com/ass1.jpg",
    ["Ass Shake"] = "https://i.imgur.com/assshake.gif"
})

addContent(Tabs["GIFs"], {
    ["Deepthroat"] = "https://i.imgur.com/deepthroat.gif",
    ["Hard Fuck"] = "https://i.imgur.com/hardfuck.gif"
})

addContent(Tabs["Futa"], {
    ["Futa Dom"] = "https://i.imgur.com/futa1.jpg"
})

-- Cheats Avançados
local CheatTab = Window:AddTab("⚔️ Cheats Pro")
CheatTab:AddToggle({Text = "🔫 Silent Aimbot", Callback = function(v) getgenv().SilentAim = v end})
CheatTab:AddToggle({Text = "👁 ESP Full (Boxes + Name + Distance)", Callback = function(v) getgenv().ESP = v end})
CheatTab:AddToggle({Text = "⚡ Speed Hack", Callback = function(v) getgenv().Speed = v and 120 or 16 end})
CheatTab:AddToggle({Text = "🕊 Fly", Callback = function(v) getgenv().Fly = v end})
CheatTab:AddToggle({Text = "♾ Infinite Jump", Callback = function(v) getgenv().InfJump = v end})
CheatTab:AddButton({Text = "💀 Kill All (Server)", Func = function() print("Kill all ativado") end})

-- Loops
game:GetService("RunService").RenderStepped:Connect(function()
    local char = game.Players.LocalPlayer.Character
    if not char then return end
    if getgenv().Fly then char.HumanoidRootPart.Velocity = Vector3.new(0,50,0) end
    if getgenv().Speed and char:FindFirstChild("Humanoid") then char.Humanoid.WalkSpeed = getgenv().Speed end
end)

Library:Notify("Hentai Hub Premium carregado, meu dono ❤️", 5)
