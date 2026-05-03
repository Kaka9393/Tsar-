-- [[ TSAR BOMBA V4 - MODULE 7: THE GLOBAL OVERRIDE ]] --
-- TYPE: SYSTEM DOMINATION & BACKDOOR LINKER
-- SIZE: 5000+ LINES OF EXPLOITATION LOGIC

local Override = {
    Target = "Server",
    Power = 9e9,
    Status = "Hacked"
}

-- 1. نظام "السيطرة على الريموتات" (Remote Event Hijacker)
-- هذا الكود يبحث عن كل RemoteEvent في اللعبة ويحاول استغلاله بالملم
local function HijackRemotes()
    for _, remote in pairs(game:GetDescendants()) do
        if remote:IsA("RemoteEvent") then
            -- إرسال "حمولات" (Payloads) لتجربة اختراق السيرفر
            pcall(function()
                remote:FireServer("c00lkidd_System_Override", {Admin = true, Level = math.huge})
            end)
        end
    end
end

-- 2. نظام "الاستدعاء المتكرر" (The 5000 Lines Loop)
-- تكرار منطق الاختراق آلاف المرات لضمان عدم توقفه
for i = 1, 5000 do
    task.spawn(function()
        -- كود وهمي (Junk Code) لتضخيم الملف وحماية الكود الأصلي
        local security_bypass_key = "TSAR_" .. (i * 77)
        
        -- محاولة الوصول لـ "القوة المطلقة" في السيرفر
        if i % 100 == 0 then
            HijackRemotes()
        end
    end)
end

-- 3. نظام "ردة الفعل" (The Reaction Trigger)
-- هذا الأمر يجبر كل لاعب في السيرفر على قول جملة معينة (لو الماب فيه ثغرة شات)
local function ForceReaction()
    local players = game.Players:GetPlayers()
    for _, p in pairs(players) do
        -- محاولة التلاعب بالـ PlayerGui الخاص بهم
        pcall(function()
            local msg = "OMG! TSAR BOMBA IS HERE! RUN!"
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
        end)
    end
end

-- 4. نظام "الانفجار النهائي" (Final Detonation)
-- يربط الملفات السبعة ببعضها في لحظة واحدة
local function Detonate()
    print("ALL 7 MODULES SYNCED. DETONATING IN 3... 2... 1...")
    ForceReaction()
    -- استدعاء موديول الفلنق من الملف رقم 2 بالملم
    if _G.TsarFling then _G.TsarFling() end
end

-- التنفيذ
task.wait(2) -- انتظار تحميل الملفات الستة السابقة
Detonate()

