function inputPassword()
    gg.alert("Enter password")

    local result = gg.prompt({"Enter Password or dm modhacker#3877"}, {""}, {"text"})

    if result == nil then
        gg.alert("Script terminated by user modhacker#3877")
        os.exit()
    end

    local password = result[1]
    return password
end

function validatePassword(password)
    local savedPassword = "dang"

    if password:match("[^%w]") then
        return false
    end

    if password == savedPassword and #password <= 10 then
        return true
    else
        return false
    end
end

function login()
    local maxAttempts = 3
    local attempts = 0

    while attempts < maxAttempts do
        local password = inputPassword()

        if validatePassword(password) then
            gg.alert("Login successful! ;)")
            break
        else
            attempts = attempts + 1
            gg.alert("Invalid password or contains forbidden characters. Please try again.")
        end
    end

    if attempts == maxAttempts then
        gg.alert("Reached the maximum number of login attempts. Login denied.")
        os.exit()
    end
end

login()

gg.setVisible(false)
gg.clearResults()
gg.clearList()
gg.alert("Made by ❄️modhacker#3877❄️&🔥Onion#9272🔥")
gg.sleep(100)
gg.setVisible(true)
function main()
HDmenu = gg.choice({'💾 • Account','💉 • Hooks & Non-Hooks','💳 • Cards','📌️ • Credits','❌Exit❌'} ,nil, "Script Made By ❄️modhacker#3877❄️&🔥Onion#9272🔥 {64-Bit} v4.96") 
if HDmenu == 1 then accounts() end
if HDmenu == 2 then hooks() end
if HDmenu == 3 then regoins() end
if HDmenu == 4 then cred() end
if HDmenu == 5 then exits() end
end

function cred()
gg.choice({
    "Credits to: ⬇️",
    "onion0362 🥸",
    "edittex 🤓",
    "ant_4n7 [👍Helper👍]" ,})
end

function accounts()
account=gg.multiChoice({
"⬆️Cards Upgrade💳, Add Upgrade On Your Cards." .. dx,
"♾️Long Text♾️, Your: name/clan/room/PassRoom." ..dk,
"🎯Bypass Ban🛡️, you cant play matchs :(." ..dl,
"↩️Back↩️",
} ,nil, "🏦Account🏦 | ON = 🟢 / OFF = 🔴")

if account == nil then
else
if account[1] == true then cardUpgrade() end
if account[2] == true then Longname() end
if account[3] == true then bypassban() end
if account[4] == true then main() end end
HOMEDM=-1 end

dl = " | 🔴"
function bypassban()
if dl == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-3,385,506,254,830,087,134Q;-788,249,601:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-763363328", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("4,128,657,366,608,510,965Q;961,277,952:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-763363328", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6,265,518,646,018,179,072Q;-1,458,804,740:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Bypass Ban | ON")
dl = " | 🟢"
elseif dl == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-3,278,620,526,175,759,326Q;-763,363,328:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-788,249,601", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-3,278,620,528,323,067,915Q;-763363328:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("961,277,952", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6,265,518,646,043,065,345Q;-698416192:5",gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-1,458,804,740", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Bypass ban | OFF")
dl = " | 🔴"
end
end

dk = " | 🔴"
function Longname()
if dk == " | 🔴" then
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("10;20;40;12:13", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("100", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("♾️Long text | ON")
dk = " | 🟢"
elseif dk == " | 🟢" then
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("430,646,427,648Q;100:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("10",gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("44,099,371,008Q;100:9",gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("20",gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("44,099,371,008Q;100:13",gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("40", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("44,099,371,008Q;100:17",gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("12", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("♾️Long text | OFF")
dk = " | 🔴"
end
end

dx = " | 🔴"
function cardUpgrade()
if dx == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.62109871e-24F;-1,447,145,484D:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-763363296", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-1.62109871e-24F;-1,459,520,515D:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🏦Cards⬆️ | ON")
dx = " | 🟢"
elseif dx == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.62109871e-24F;-763363296:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-1,447,145,484", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-1.62109871e-24F;-698416192:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-1,459,520,515", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🏦Cards⬆️ | OFF")
dx = " | 🔴"
end
end

function regoins()
regoine=gg.choice({
"💳Cards v1💳 (Normal)",
"💳Cards v2💳 (Fast)",
"↩️Back↩️",
} ,nil, "Cards :)")
if regoine == 1 then regoinss() end
if regoine == 2 then cards2() end
if regoine == 3 then main() end
end

function cards2()
menun=gg.multiChoice({
"🖤Blackout🖤",
"🌞Flashbang🌞",
"🧊Ice bomb🧊",
"[↩️Back↩️]",
} ,nil, "(Not Like Cards v1), this is better v2 (More Coming Soon 🐐)")

if menun == nil then
else
if menun[1] == true then ASA() end
if menun[2] == true then BSB() end
if menun[3] == true then CSC() end
if menun[4] == true then main() end end
HOMEDM=-1 end

function ASA()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-504,195,350,062,231,550Q;-1,862,261,792:21', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-1,862,262,816', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🖤blackout🖤")
end

function BSB()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,384,128,480;5,668,093,629,804,056,585Q:13', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,120,352', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🌞Flashbang🌞")
end

function CSC()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('3,746,995,337,609,440,520Q;1,384,120,352:9', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,120,384', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🧊Ice bomb🧊")
end

function regoinss()
regoin=gg.choice({
"C_Alloc (Ca)",
"Others (O)",
"Anonymous (A)",
"↩️Back↩️",
} ,nil, "Choose Your Region Support")
if regoin == 1 then CAlloc() end
if regoin == 2 then Others() end
if regoin == 3 then Anonymous() end
if region == 4 then main() end
end

function CAlloc()
gg.setRanges(gg.REGION_C_ALLOC)
gg.alert("✅C_Alloc✅")
cards()
end

function Others()
gg.setRanges(gg.REGION_OTHER)
gg.alert("✅Others✅")
cards()
end

function Anonymous()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.alert("✅Anonymous✅")
cards()
end

function hooks()
hook=gg.multiChoice({
"⏳Cooldown⏳, 😭 fixed 😅",
"🧱Throw bomb🧱, 😭 fixed 🫡",
"♾️Infinite Smoke♾, No Explosion",
"❌Bypass Ads⏲️, You can open chest and more" .. dc,
"👁️X-Ray v1 & v2🤩, Show items from wall",
"💫🕊️Throw bomb Stun💣, When bomb throw on your head doesn't stun" .. dp,
"🛡️Undestroy items💣, You need Collect fast before anticheat" .. dy,
"💣Instant Line Of Bombs💣, 🤕 fixed 😮‍💨",
"🔥Power bomb 0💣, Use after cooldown" .. de,
"🚩No Mines found🕳️, Does not activate mines" .. di, -- GameChar::CheckForCollisionWithHiddenMineBombsReturnTrueIfMineFound
"🚧Bypass fence❌, You can walk" .. ds,
"💼Items X100♾️, Collect 100+",
"↩️Back↩️",
} ,nil, "⚔️Hooks⚔️ {NEW} | ON = 🟢 / OFF = 🔴")

if hook == nil then
else
if hook[1] == true then cooldown() end
if hook[2] == true then wall() end
if hook[3] == true then smoke() end
if hook[4] == true then ads() end
if hook[5] == true then xray() end
if hook[6] == true then headstun() end
if hook[7] == true then unitem() end
if hook[8] == true then line() end
if hook[9] == true then powers() end
if hook[10] == true then mines() end
if hook[11] == true then fences() end
if hook[12] == true then itemsx100() end
if hook[13] == true then main() end end
HOMEDM=-1 end

function itemsx100()
gg.setVisible(false)
local﻿ menu = gg.alert('💼Items X100♾️, Press Icon Game Guardian to OFF/ON, if you want to stop, you can see ⏺️ prees it to Stop. |||||| [⚠️Warning⚠️] If you so fast and Appears Wifi Erorr Stop Now....then move, Or You will get banned By Server He thinks you Hacking Speed. ||||||| How to not get banned: when you pick up an object you pick it up and then destroy it then go over it or even stay on top of it you wont be banned.👍','❌No❌','✅Yes✅')
if menu == nil then return 
else
if menu == 1 then Indo() end
if menu == 2 then Eng() end
end
end

function Indo() -- no
hooks()
end

function Eng() -- yes
local scriptAtivado = false  -- Estado atual do script

local function modifyValues()
gg.processPause()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-6,250,578,478,152,761,760;-2,999,674,700,805,550,092;-6,215,715,193,031,294,016;-1,447,208,970D::19', gg.TYPE_QWORD)
gg.getResults(5)
gg.editAll('-763363328' ,gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-6,268,641,293,400,801,280Q;-1,459,531,788::19', gg.TYPE_DWORD)
gg.getResults(5)
gg.editAll('-698416192',gg.TYPE_DWORD)
gg.processToggle()
gg.toast("💼Items X100♾️ | ON")
gg.clearResults()
end

local function restoreValues()
gg.processPause()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-6,250,578,478,152,761,760;-763363328D::19', gg.TYPE_QWORD)
gg.getResults(5)
gg.editAll('-1,447,208,970' ,gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-2,999,674,700,789,098,506Q;-698416192::19', gg.TYPE_DWORD)
gg.getResults(5)
gg.editAll('-1,459,531,788',gg.TYPE_DWORD)
gg.processToggle()
gg.toast("💼Items X100♾️ | OFF")
gg.clearResults()
end

local function toggleScript()
  scriptAtivado = not scriptAtivado
  if scriptAtivado then
    modifyValues()
  else
    restoreValues()
  end
end

-- Adicionando um loop para manter o script em execução
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    toggleScript()
  end
  gg.sleep(100) -- Adicionando um pequeno atraso para evitar consumo excessivo de recursos
end
end

de = " | 🔴"
function powers() 
if de == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,358,962,696;-2,999,674,703,190,218,784Q:9", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-763363296", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("1,895,882,015;-2,999,674,703,190,218,784Q:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🔥Power bomb 0💣 | ON")
de = " | 🟢"
elseif de == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-763363296;-2,999,674,703,190,218,784Q:9", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("1,358,962,696", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-698416192;-2,999,674,703,190,218,784Q:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("1,895,882,015", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🔥Power bomb 0💣 | OFF")
de = " | 🔴"
end
end

di = " | 🔴"
function mines()
if di == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-1,862,237,215;-486,375,528,236,841,376Q:9', gg.TYPE_DWORD)
gg.getResults(5)
gg.editAll('-1,862,268,959' ,gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🚩No Mine Found🕳️ | ON")
di = " | 🟢"
elseif di == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-1,862,268,959;-486,375,528,236,841,376Q:9', gg.TYPE_DWORD)
gg.getResults(5)
gg.editAll('-1,862,237,215' ,gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🚩No Mine Found🕳️ | OFF")
di = " | 🔴"
end
end

ds = " | 🔴"
function fences()
if ds == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.processPause()
gg.searchNumber("1,358,955,593;-3,458,689,702,670,892,504Q:13", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-763363296", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("1,895,832,895;1,152,922,104,042,016,074Q:17", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.processToggle()
gg.clearResults()
gg.toast("🚧Bypass fence❌ | ON")
ds = " | 🟢"
elseif ds == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.processPause()
gg.searchNumber("-763363296;-3,458,689,702,670,892,504Q:13", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("1,358,955,593", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-698416192;1,152,922,104,042,016,074Q:17", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("1,895,832,895", gg.TYPE_DWORD)
gg.processToggle()
gg.clearResults()
gg.toast("🚧Bypass fence❌ | OFF")
ds = " | 🔴"
end
end

function line()
gg.toast("Sorry for say that😭Line of bombs got fixed🫡")
end


dy = " | 🔴"
function unitem()
if dy == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,896,039,455;8,142,952,462,999,880,064Q:9", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-763363328", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("1,409,286,476;8,142,952,462,999,880,064Q:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🛡️Undestory items💣 | ON")
dy = " | 🟢"
elseif dy == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-763363328;8,142,952,462,999,880,064Q:9", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("1,896,039,455", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-698416192;8,142,952,462,999,880,064Q:5", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("1,409,286,476", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🛡️Undestory items💣 | OFF")
dy = " | 🔴"
end
end

dp = " | 🔴"
function headstun()
if dp == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1.57526047e-24F;-788,380,673D:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-763363328', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1.57526047e-24F;-1,459,329,030D:9', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-698416192', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("💫🕊️Throw Stun💣 | ON")
dp = " | 🟢"
elseif dp == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1.57526047e-24F;-763363328:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-788,380,673', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-698,416,192;1.57526047e-24F:9', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-1,459,329,030', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("💫🕊️Throw Stun💣 | OFF")
dp = " | 🔴"
end
end

function cooldown()
gg.toast("😭cooldown fixed 4.95😢")
end

function wall()
gg.toast("😮‍💨Got Fixed throw bomb bypass 4.95😭🥲")
end

function xray()
Xrayy=gg.choice({
"Xray V2" .. df,
"Xray V1" .. dt,
} ,nil, "Choose Xray V1, V2")
if Xrayy == 1 then xray2() end
if Xrayy == 2 then xray1() end
end

dt = " | 🔴"
function xray1()
if dt == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-1,186,930,680;-486,274,375,314,570,488Q:21', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-763363296', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('304,052,488;-486,274,375,314,570,488Q:17', gg.TYPE_DWORD) 
gg.getResults(99)
gg.editAll('-698416192', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("👁️Xray v1👀 | ON")
dt = " | 🟢"
elseif dt == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-763363296;-486,274,375,314,570,488Q:21', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-1,186,930,680', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-698416192;-486,274,375,314,570,488Q:17', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('304,052,488', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("👁️Xray v1👀 | OFF")
dt = " | 🔴"
end
end

df = " | 🔴"
function xray2()
if df == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,918,278,256,483,238,184Q;-698,416,192D:13', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-1,745,827,094',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-5,097,828,450,669,901,078Q;-1,186,930,680D:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-763363296', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-3,278,620,388,737,627,414Q;1,895,829,791D:9', gg.TYPE_DWORD) 
gg.getResults(99)
gg.editAll('-698416192', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("👁️Xray v2👀 | ON")
df = " | 🟢"
elseif df == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-3,278,620,388,737,627,414Q;-763363296:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('-1,186,930,680', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-5,097,828,450,669,901,078Q;-698,416,192D:9', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,895,829,791', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("👁️Xray v2👀 | OFF")
df = " | 🔴"
end
end

function smoke()
smokes=gg.choice({
"6 - 99999.0s (Inf)",
"5 - 3.0s (Very slow)",
"4 - 2.0s (Slow)",
"3 - 1.5s (Slow 75%)",
"2 - 1.0s (Slow little)",
"1 - 0.5s (Normal)",
} ,nil, "Choose Time for Smoke")
if smokes == 1 then INF() end
if smokes == 2 then VERYSLOW() end
if smokes == 3 then SLOW() end
if smokes == 4 then SLOW75() end
if smokes == 5 then SLOWL() end
if smokes == 6 then NORMAL() end
end

function SLOW75()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,384,136,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,168,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,153,056;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,168,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,184,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,168,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1386221632;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,168,320', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,216,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,168,320', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Smoke Slow 75%")
end

function SLOWL()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,384,136,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,153,056',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,184,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,153,056', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1386221632;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,153,056', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,216,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,153,056', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,168,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,153,056', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Smoke Slow little")
end

function INF()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,384,136,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1386221632',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,153,056;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1386221632',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,184,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1386221632',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,216,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1386221632',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,168,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1386221632',gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Smoke Inf")
end

function VERYSLOW()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,384,136,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,216,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,153,056;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,216,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,184,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,216,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1386221632;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,216,320', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,168,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,216,320', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Smoke Very Slow")
end

function SLOW()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,384,153,056;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,184,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,136,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,184,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1386221632;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,184,320', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,216,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,184,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,168,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,184,320', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Smoke Slow")
end

function NORMAL()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,384,153,056;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,136,320',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,184,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,136,320', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1386221632;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,136,320', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,216,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,136,320', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1,384,168,320;-4.37069294e13F:5', gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll('1,384,136,320', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Smoke Normal")
end

dc = " | 🔴"
function ads()
if dc == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-113,242,104;3,819,051,973,815,042,209Q:25', gg.TYPE_DWORD) -- isRewardedAdWatchedSuccessfully
gg.getResults(99)
gg.editAll('-763363296',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('960,520,457D;3,035,148,935,350,976,617Q:5', gg.TYPE_DWORD, false, SIGH_QUAL, 0, -1) -- ret
gg.getResults(69, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('-698416192',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1.59581838e-24F;-788,462,593:5', gg.TYPE_DWORD) -- adContinueWatch
gg.getResults(99)
gg.editAll('-763363296',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1.59581838e-24F;-117,435,405:9', gg.TYPE_DWORD, false, SIGH_QUAL, 0, -1) -- ret
gg.getResults(69, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('-698416192',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-1.49485483e-24F;-132,247,565:5', gg.TYPE_DWORD) -- hasEnoughTimePassedSinceLastAd
gg.getResults(99)
gg.editAll('-763363296',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-1.49485483e-24F;-1,459,520,515:9', gg.TYPE_DWORD, false, SIGH_QUAL, 0, -1) -- ret
gg.getResults(69, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('-698416192',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-4.37057214e13F;-268,412,792:5', gg.TYPE_DWORD) -- isSearchingAnyGame
gg.getResults(99)
gg.editAll('-763363296',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-4.37057214e13F;-112,746,232D:9', gg.TYPE_DWORD, false, SIGH_QUAL, 0, -1) -- ret
gg.getResults(69, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('-698416192',gg.TYPE_DWORD)
gg.toast('⏲️Bypass Ads⏲️ | ON')
gg.clearResults()
dc = " | 🟢"
elseif dc == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-763363296;3,819,051,973,815,042,209Q:25', gg.TYPE_DWORD) -- isRewardedAdWatchedSuccessfully
gg.getResults(99)
gg.editAll('-113,242,104',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-698,416,192;3,035,148,935,350,976,617Q:5', gg.TYPE_DWORD) -- ret
gg.getResults(99)
gg.editAll('960,520,457',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1.59581838e-24F;-763363296:5', gg.TYPE_DWORD) -- AdContinueWatch
gg.getResults(99)
gg.editAll('-788,462,593',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('1.59581838e-24F;-698,416,192:9', gg.TYPE_DWORD) -- ret
gg.getResults(99)
gg.editAll('-117,435,405',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-1.49485483e-24F;-763363296:5', gg.TYPE_DWORD) -- hasEnoughTimePassedSinceLastAd
gg.getResults(99)
gg.editAll('-132,247,565',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-1.49485483e-24F;-698,416,192:9', gg.TYPE_DWORD) -- ret
gg.getResults(99)
gg.editAll('-1,459,520,515',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-4.37057214e13F;-763363296:5', gg.TYPE_DWORD) -- isSearchingAnyGame
gg.getResults(99)
gg.editAll('-268,412,792',gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber('-4.37057214e13F;-698,416,192:9', gg.TYPE_DWORD) -- ret
gg.getResults(99)
gg.editAll('-112,746,232',gg.TYPE_DWORD)
gg.clearResults()
gg.toast("⏲️Bypass Ads⏲️ | OFF")
gg.clearResults()
dc = " | 🔴"
end
end

function exits()
gg.clearResults()
gg.clearList()
gg.toast("Made By 💪modhacker#3877💪")
gg.setVisible(true)
gg.sleep(300)
print("Yes, You like my Script😂❤️")
os.exit()
end


function cards()
menu=gg.multiChoice({
"🤢Wings Blob🕊️",
"🤢blob",
"🚬Smoke🚬",
"💀Wings Hex🕊️",
"💀Hex",
"🌞Flashbang🌞",
"🖤Blackout🖤",
"👁️Xray T bomb👁️",
"🧊Ice bomb🧊",
"🌐Force Field Infinity♾️",
"[↩️Back↩️]",
} ,nil, "Script Made By ❄️modhacker#3877❄️&🔥Onion#9272🔥")

if menu == nil then
else
if menu[1] == true then A() end
if menu[2] == true then B() end
if menu[3] == true then C() end
if menu[4] == true then D() end
if menu[5] == true then DD() end
if menu[6] == true then E() end
if menu[7] == true then F() end
if menu[8] == true then H() end
if menu[9] == true then I() end
if menu[10] == true then J() end
if menu[11] == true then main() end end
HOMEDM=-1 end

function A()
gg.searchNumber("1;8F;1;9F;2;9F;2;9F;3;9F;3;10F;4;10F;4;10F;4;10F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0" , gg.TYPE_FLOAT)
gg.toast("🕊️Wings Blob🤢")
gg.clearResults()
end

function B()
gg.searchNumber("1;8F;2;8F;2;10F;3;10F;3;10F;4;10F;4;12F;5;12F;5;12F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0" , gg.TYPE_FLOAT)
gg.toast("🤢blob")
gg.clearResults()
end

function C()
gg.searchNumber("1;6F;2;6F;2;7F;3;7F;3;7F;4;7F;4;8F;5;8F;5;8F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0" , gg.TYPE_FLOAT)
gg.toast("🚬Smoke🚬")
gg.clearResults()
end

function D()
gg.searchNumber("17,747;3;4;4;5;5;9;9;10;10;10.0F:269", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-1" , gg.TYPE_DWORD)
gg.toast("💀Wings Hex🕊️")
gg.clearResults()
end

function DD()
gg.searchNumber("3;3;5;5;9;9;10;10;12;10.0F;16,965::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-1" , gg.TYPE_DWORD)
gg.toast("💀Hex")
gg.clearResults()
end

function E()
gg.searchNumber("1;1.2F;2;1.2F;2;1.2F;3;1.2F;3;1.7F;4;1.7F;4;1.7F;5;1.7F;5;2.2F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.01" , gg.TYPE_FLOAT)
gg.toast("🌞Flashbang☀️")
gg.clearResults()
end

function F()
gg.searchNumber('6.00;6.00;6.00;6.00;6.00;6.00;8.00', gg.TYPE_FLOAT)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0" , gg.TYPE_FLOAT)
gg.toast("🖤Blackout🖤")
gg.clearResults()
end

function H()
gg.searchNumber("3;3;5;5;9;9;10;10;29285::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("12" , gg.TYPE_DWORD)
gg.toast("👁️Xray👁️")
gg.clearResults()
end

function I()
gg.searchNumber("1;8F;2;8F;2;8F;3;8F;3;10F;4;10F;4;10F;5;10F;5;12F;1~20::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99)
gg.editAll("0", gg.TYPE_FLOAT)
gg.editAll("-1", gg.TYPE_DWORD)
gg.toast("🧊Ice bomb🧊")
gg.clearResults()
end

function J()
gg.searchNumber("2.0;2.3;2.6;2.9;3.2;3.5;3.8;4.1;4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999" , gg.TYPE_FLOAT)
gg.toast("🌐Infinity🌐")
gg.clearResults()
end

while true do
if gg.isVisible(true) then
HOMEDM = 1 
gg.setVisible(false)
end
if HOMEDM == 1 then
main()
end
end
