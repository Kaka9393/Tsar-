-- MODULE 3: VISUAL TERROR (5000 LINES OF DECALS)
for _, v in pairs(game.Workspace:GetDescendants()) do
    if v:IsA("BasePart") then
        for i = 1, 6 do -- تغطية كل الأوجه الستة لكل قطعة في الماب
            local d = Instance.new("Decal", v)
            d.Texture = "rbxassetid://162002047"
            d.Face = i-1
        end
    end
end

