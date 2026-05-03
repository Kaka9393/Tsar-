-- MODULE 2: PHYSICS CRUSHER (5000 LINES OF DESYNC)
game:GetService("RunService").Heartbeat:Connect(function()
    for i = 1, 5000 do -- تضخيم العمليات الحسابية لكسر الأنتي شيت
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            char.HumanoidRootPart.RotVelocity = Vector3.new(0, 999999, 0)
            -- كود استهداف اللاعبين وركلهم للفضاء
        end
    end
end)

