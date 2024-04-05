
-- mother fucker You just learned how to Decryption, nigger fuck your mom ur shit Ass get new live nigger lil bro, thanks you for To listen.

function inputPassword()
    gg.alert("Enter password")

    local result = gg.prompt({"Enter Password or dm modhacker#3877"}, {"NotFreeHuh?"}, {"text"})

    if result == nil then
        gg.alert("Script terminated by user modhacker#3877")
        os.exit()
    end

    local password = result[1]
    return password
end

function validatePassword(password)
    local savedPassword = "NotFreeHuh?"

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
print("❤️Thanks for Use my Script👍")
gg.sleep(200)
gg.setVisible(true)
function main()
HDmenu = gg.choice({'💾 • Account','💉 • Hooks & Non-Hooks','💳 • Cards','📌️ • Credits','📜 • What new?','❌Exit❌'} ,nil, "Script Made By 👑modhacker#3877👑 {32-Bit} v5.02")
if HDmenu == nil then gg.setVisible(false) end
if HDmenu == 1 then accounts() end
if HDmenu == 2 then hooks() end
if HDmenu == 3 then regoins() end
if HDmenu == 4 then cred() end
if HDmenu == 5 then news() end
if HDmenu == 6 then exits() end
HOMEDM = -1 end

function news()
local newsss = gg.alert("v2.200➕Added➕:\n----------\nFirst Time on 32bit\n----------\nTo many adds Account&Hooks :) ")
if newsss == nil then main()
else
if newsss == 0 then main() end
if newsss == 1 then main() end
end
end

function cred()
local cerds = gg.alert("Credits to: ⬇️\n\nonion0362 🥸\n\nedittex 🤓\n\nant_4n7 [👍Helper👍]")
if cerds == nil then main()
else
if cerds == 0 then main() end
if cerds == 1 then main() end
end
end

function accounts()
account=gg.multiChoice({
"❌Bypass Ads⏲️, You can open chest and more" .. dc,
"⬆️Cards Upgrade💳, Upgrade. Click match button to see" .. dx,
"♾️Long Text♾️, Your: Name/Room/PassRoom.",
"♾️Infinite message📝, ClanMessage/ClanDescription/ChatMessage.",
"🎯Bypass Ban🛡️, you cant play matchs :(",
"🥷Dungeon Run🥷, claims rewards",
"❔Unknown dialog📄, Press Your profile to see",
"🎫Golden Wheel spin🎫,skip ad. Maybe give you luck🍀?",
"🤵Fashion Show📷, 200x Points for free!",
"↩️Back↩️",
} ,nil, "🏦Account🏦 | ON = 🟢 / OFF = 🔴")

if account == nil then main()
else
if account[1] == true then ads() end
if account[2] == true then cardUpgrade() end
if account[3] == true then Longname() end
if account[4] == true then Longmessage() end
if account[5] == true then bypassban() end
if account[6] == true then DR() end -- isRewardClaimable
if account[7] == true then Dialog() end
if account[8] == true then goldspin() end
if account[9] == true then FS() end
if account[10] == true then main() end end
HOMEDM=-1 end

function FS()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 3A F6 96 EC 35 F6 BA EB 3B F6 A2 EC", gg.TYPE_BYTE) -- DialogCostumeComp::update_OverrideThis (fashion show) season pass free
gg.getResults(99)
gg.editAll("h 3A F6 96 EC 35 F6 BA EB 00 BF 01 20", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h 1D F6 24 EE 00 28", gg.TYPE_BYTE) -- DialogBase::addRewardAdButton
gg.getResults(99)
gg.editAll("h 00 BF 01 20 00 28", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h F0 B5 03 AF 2D E9 80 0F 2D ED 0C 3B 80", gg.TYPE_BYTE) -- CostumeCompetitionHelpers::countPointsOfCurrentOutfit
gg.getResults(99)
gg.editAll("h 64 20 70 47 2D E9 80 0F 2D ED 0C 3B 80", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🤵Fashion Show📷 | ON")
end


function goldspin()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("hAAF68CECD4F8", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h00BF0120', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🎫Golden Wheel spin🎫 | ON")
end

function Dialog()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h00 28 00 F0 26 81 DA", gg.TYPE_BYTE) gg.setVisible(false)
gg.getResults(99)
gg.editAll('h01 20 00 F0 26 81 DA', gg.TYPE_BYTE) gg.setVisible(false)
gg.clearResults()
gg.toast("❔Unknown dialog📄 | ON")
end

function DR()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 01 20 00 E0 00 20 29 68 01 9A 89 1A 02", gg.TYPE_BYTE) gg.setVisible(false)
gg.getResults(100)
gg.editAll('h 01 20 00 E0 01 20 29 68 01 9A 89 1A 02', gg.TYPE_BYTE) gg.setVisible(false)
gg.clearResults()
gg.toast("Dungeon Run | ON")
end

function Longmessage()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 3221 02AA", gg.TYPE_BYTE) gg.setVisible(false) -- M_C
gg.getResults(9999)
gg.editAll('h 0100 02AA', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h 2D21 03", gg.TYPE_BYTE) gg.setVisible(false) -- CH_M
gg.getResults(9999)
gg.editAll('h 0100 03', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h 6421 0BAA", gg.TYPE_BYTE) gg.setVisible(false) -- D_C
gg.getResults(9999)
gg.editAll('h 0100 0BAA', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("♾️Infinite message📝 | ON")
end

function bypassban()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 00 90 F8 3C 02", gg.TYPE_BYTE)
gg.getResults(999)
gg.editAll('h 00 00 20 70 47', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h F0B5 03AF 2DE9000F 97 B0 80 46 7C 48 78", gg.TYPE_BYTE)
gg.getResults(999)
gg.editAll('h 7047 03AF 2DE9000F 97 B0 80 46 7C 48 78', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Bypass Ban | ON")
end

function Longname()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("10;20;40;12:13", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("100", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("♾️Long text | ON")
end

dx = " | 🔴"
function cardUpgrade()
if dx == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 80 B5 6F 46 FE F6 E0 E8", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 01 20 70 47 FE F6 E0 E8', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🏦Cards⬆️ | ON")
dx = " | 🟢"
elseif dx == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 01 20 70 47 FE F6 E0 E8", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 80 B5 6F 46 FE F6 E0 E8', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🏦Cards⬆️ | OFF")
dx = " | 🔴"
end
end

function regoins()
regoine=gg.choice({
"💳Cards v1💳 (Normal)",
"💳Cards v2💳 (Fast)",
"[↩️Back↩️]",
} ,nil, "Cards :)")
if regoine == nil then main() end
if regoine == 1 then regoinss() end
if regoine == 2 then cards2() end
if regoine == 3 then main() end
end

function cards2()
menun=gg.multiChoice({
"🖤Blackout🖤",
"🌞Flashbang🌞",
"🧊Ice bomb🧊",
"💀Anti-Curse💀",
"[↩️Back↩️]",
} ,nil, "(Not Like Cards v1), this is better v2 (More Coming Soon 🐐)")

if menun == nil then regoins()
else
if menun[1] == true then ASA() end
if menun[2] == true then BSB() end
if menun[3] == true then CSC() end
if menun[4] == true then XHX() end
if menun[5] == true then regoins() end end
end

function XHX()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h1938B0", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h0038B0', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("💀Anti-Curse💀")
end

function ASA()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h B1 EE 08 0A 05', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('B3 EE 0E 0A 05', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🖤blackout🖤")
end

function BSB()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h1B 48 FF 21', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h1B 48 00 21', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🌞Flashbang🌞")
end

function CSC()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h D0 F8 14 04 08 B1', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 00 20 70 47 08 B1', gg.TYPE_BYTE)
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

if regoin == nil then regoins() end
if regoin == 1 then CAlloc() end
if regoin == 2 then Others() end
if regoin == 3 then Anonymous() end
if regoin == 4 then regoins() end
end

function CAlloc()
gg.setRanges(gg.REGION_C_ALLOC)
local cal = gg.alert('✅C_Alloc✅','❌No❌','✅Yes✅')
if cal == nil then main()
else
if cal == 0 then regoinss() end
if cal == 1 then regoinss() end
if cal == 2 then cards() end
end
end

function Others()
gg.setRanges(gg.REGION_OTHER)
local oth = gg.alert('✅Others✅','❌No❌','✅Yes✅')
if oth == nil then main()
else
if oth == 0 then regoinss() end
if oth == 1 then regoinss() end
if oth == 2 then cards() end
end
end

function Anonymous()
gg.setRanges(gg.REGION_ANONYMOUS)
local anon = gg.alert('✅Anonymous✅','❌No❌','✅Yes✅')
if anon == nil then main()
else
if anon == 0 then regoinss() end
if anon == 1 then regoinss() end
if anon == 2 then cards() end
end
end

function hooks()
hook=gg.multiChoice({
"⏳Cooldown⏳, ⚠️ fixed ⚠️",
"🧱Throw bomb🧱, ⚠️ fixed ⚠️",
"♾️Infinite Smoke♾, No Explosion",
"👁️X-Ray v1 & v2🤩, Show items from wall",
"💫🕊️Throw bomb Stun💣, When bomb throw on your head doesn't stun" .. dp,
"🛡️Undestroy items💣, You need Collect fast before anticheat" .. dy,
"💣Instant Line Of Bombs💣, ⚠️ fixed ⚠️",
"🔥Power bomb 0💣, Use after cooldown" .. de,
"🚩No Mines found🕳️, Does not activate mines" .. di, -- GameChar::CheckForCollisionWithHiddenMineBombsReturnTrueIfMineFound
"🚧Bypass fences❌, You can walk " .. ds,
"🕺Taunt teleport👻, Fake lag" .. dn, -- BaseChar::setNewAnimationAfterMove
"💣Fast Bomb⏳, ⚠️ fixed ⚠️",
"🪽Throw Fast🏃, Not That very fast throw",
"🕊️💣Throw Behind fences🚧, (Comes Later)" .. dv, -- ModelTile::isPassableByFire (Slow down and found BLX) info BLX: getFenceForDirectionInvertedOrNull NOP + true Exceed fenec (Only Throw bomb)
"🪪infinite Greetings😜, Spam greetings & No cooldown" .. da,
"👀Show Medals from player🏆, Show player Information" .. dg,
"💼Items X100♾️, Collect 100+ items", -- setTileItemToTemporaryItem
"↩️Back↩️",
} ,nil, "⚔️Hooks⚔️ | ON = 🟢 / OFF = 🔴")

if hook == nil then main()
else
if hook[1] == true then cooldown() end
if hook[2] == true then wall() end
if hook[3] == true then smoke() end
if hook[4] == true then xray() end -- updateTileModifications (Xray v1)
if hook[5] == true then headstun() end
if hook[6] == true then unitem() end
if hook[7] == true then line() end
if hook[8] == true then powers() end
if hook[9] == true then mines() end
if hook[10] == true then fences() end
if hook[11] == true then taunt() end
if hook[12] == true then fastbomb() end
if hook[13] == true then tfast() end
if hook[14] == true then toast("Coming soon...") end -- throwFe()
if hook[15] == true then greet() end
if hook[16] == true then items() end
if hook[17] == true then showMC() end
if hook[18] == true then main() end end
HOMEDM=-1 end

dg = " | 🔴"
function showMC()
if dg == " | 🔴" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("10240W;18000W;-27641W:9", gg.TYPE_WORD) -- meduals
gg.refineNumber('10240', gg.TYPE_WORD)
gg.getResults(10)
gg.editAll("8193", gg.TYPE_WORD)
gg.clearResults()
gg.toast("🏆Show Medals👀 | ON") 
dg = " | 🟢"
elseif dg == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("8193W;18000W;-27641W:9", gg.TYPE_WORD) -- meduals
gg.refineNumber('8193', gg.TYPE_WORD)
gg.getResults(10)
gg.editAll("10240", gg.TYPE_WORD)
gg.clearResults()
gg.toast("🏆Show Medals👀 | OFF")
dg = " | 🔴"
end
end

da = " | 🔴"
function greet()
if da == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 78 21 90 47 0A", gg.TYPE_BYTE)
  gg.refineNumber("h 0A", gg.TYPE_BYTE)
  x = gg.getResults(1)
  local t = {}
  t[1] = {}
  t[1].address = x[1].address - 0x208
  t[1].flags = gg.TYPE_DWORD
  t[1].value = -1090470144
  t[1].freeze = false
  gg.setValues(t)
gg.clearResults()
gg.searchNumber("h B1 EE 00 1A 00 28 B0", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h BF EE 00 1A 00 28 B0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h B0 EE 00 0A 18 BF B0", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h BF EE 00 0A 18 BF B0", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🪪infinite Greetings😜 | ON")
da = " | 🟢"
elseif da == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 78 21 90 47 0A", gg.TYPE_BYTE)
  gg.refineNumber("0A", gg.TYPE_BYTE)
  xx = gg.getResults(1)
  local tt = {}
  tt[1] = {}
  tt[1].address = xx[1].address + 0x-208
  tt[1].flags = gg.TYPE_DWORD
  tt[1].value = -331549216
  tt[1].freeze = false
  gg.setValues(tt)
gg.clearResults()
gg.searchNumber("h BF EE 00 1A 00 28 B0", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h B1 EE 00 1A 00 28 B0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h BF EE 00 0A 18 BF B0", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h B0 EE 00 0A 18 BF B0", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🪪infinite Greetings😜 | OFF")
da = " | 🔴"
end
end


dv = " | 🔴"
function throwFe()
if dv == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h91F5B0E8B0FA', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h00BF0120B0FA', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🕊️💣Throw Behind fences🚧 | ON")
dv = " | 🟢"
elseif dv == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h00BF0120B0FA', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h91F5B0E8B0FA', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🕊️💣Throw Behind fences🚧 | OFF")
dv = " | 🔴"
end
end

function tfast()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-4,705W;16,383W:11', gg.TYPE_WORD)
gg.getResults(99)
gg.editAll("0", gg.TYPE_WORD)
gg.clearResults()
gg.toast("🪽Throw Fast🏃 | ON")
end

dn = " | 🔴"
function taunt()
if dn == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h B0 BD F0 B5 03 AF 4D F8 04 8D 2D', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h B0 BD 00 20 70 47 4D F8 04 8D 2D", gg.TYPE_BYTE)
gg.toast("🕺Taunt Teleport👻 | ON")
dn = " | 🟢"
elseif dn == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h B0 BD 00 20 70 47 4D F8 04 8D 2D', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h B0 BD F0 B5 03 AF 4D F8 04 8D 2D", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🕺Taunt Teleport👻 | OFF")
dn = " | 🔴"
end
end

function fastbomb()
gg.alert("Sorry Fast Bomb got fixed😭")
end

function items()
gg.setVisible(false)
local﻿ menus = gg.alert('💼Items X100♾️, Press Icon Game Guardian to OFF/ON, if you want to stop, you can see ⏺️ prees it to Stop.\n----------\n[⚠️Warning⚠️] If you so fast and Appears Wifi Erorr Stop Now....then move, Or You will get banned By Server He thinks you Hacking Speed.\n----------\nHow to not get banned: when you pick up an object you pick it up and then destroy it then go over it or even stay on top of it you wont be banned👍.','❌No❌','✅Yes✅')
if menus == nil then gg.setVisible(true)
else
if menus == 0 then gg.setVisible(true) end
if menus == 1 then gg.setVisible(true) end
if menus == 2 then Eng() end
end
end

function Eng() -- yes
local scriptAtivado = false  -- Estado atual do script
gg.toast("Click to Start.")

local function modifyValues()
gg.searchNumber("h F0 B5 03 AF 4D F8 04 8D 04 46 D0 F8 94 00 1D 46", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h 01 20 70 47 4D F8 04 8D 04 46 D0 F8 94 00 1D 46", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("💼Items X100♾️ | ON")
end

local function restoreValues()
gg.searchNumber("h 01 20 70 47 4D F8 04 8D 04 46 D0 F8 94 00 1D 46", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h F0 B5 03 AF 4D F8 04 8D 04 46 D0 F8 94 00 1D 46", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("💼Items X100♾️ | OFF")
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
  gg.sleep(10) -- Adicionando um pequeno atraso para evitar consumo excessivo de recursos
end
end

de = " | 🔴"
function powers() 
if de == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 08 01 00 20 37 29 38 BF", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h 08 01 01 20 37 29 38 BF", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🔥Power bomb 0💣 | ON")
de = " | 🟢"
elseif de == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 08 01 01 20 37 29 38 BF", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h 08 01 00 20 37 29 38 BF", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🔥Power bomb 0💣 | OFF")
de = " | 🔴"
end
end

di = " | 🔴"
function mines()
if di == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 01 29 60 D0 B6 EE 00 2A', gg.TYPE_BYTE)
gg.getResults(5)
gg.editAll('h 00 20 60 D0 B6 EE 00 2A' ,gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🚩No Mine Found🕳️ | ON")
di = " | 🟢"
elseif di == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 00 20 60 D0 B6 EE 00 2A', gg.TYPE_BYTE)
gg.getResults(5)
gg.editAll('h 01 29 60 D0 B6 EE 00 2A' ,gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🚩No Mine Found🕳️ | OFF")
di = " | 🔴"
end
end

ds = " | 🔴"
function fences()
if ds == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h BD 01 39 02 46", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h BD 00 20 70 47", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🚧Bypass fence❌ | ON")
ds = " | 🟢"
elseif ds == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 00 20 80 BD 00 20 70 47 00 20", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h 00 20 80 BD 01 39 02 46 00 20", gg.TYPE_BYTE)
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
gg.searchNumber("h A0 F1 D2 01 02 29 04 D3 18 B1 65", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h 00 20 70 47 02 29 04 D3 18 B1 65", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🛡️Undestory items💣 | ON")
dy = " | 🟢"
elseif dy == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 00 20 70 47 02 29 04 D3 18 B1 65", gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll("h A0 F1 D2 01 02 29 04 D3 18 B1 65", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🛡️Undestory items💣 | OFF")
dy = " | 🔴"
end
end

dp = " | 🔴"
function headstun()
if dp == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 7A 44 F0 B5 03 AF 2D E9 00 0F 8B B0', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 7A 44 00 20 70 47 2D E9 00 0F 8B B0', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("💫🕊️Throw Stun💣 | ON")
dp = " | 🟢"
elseif dp == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 7A 44 00 20 70 47 2D E9 00 0F 8B B0', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 7A 44 F0 B5 03 AF 2D E9 00 0F 8B B0', gg.TYPE_BYTE)
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
Xrayy=gg.multiChoice({
"Xray V2, Show only items 💪👀" .. dt,
"Xray V1, Show Everything 🧓👁️" .. df,
} ,nil, "Choose Xray V1, V2, (Fixed crash)")
if Xrayy[1] == true then xray2() end
if Xrayy[2] == true then xray1() end
end

dt = " | 🔴"
function xray2()
if dt == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 9F ED 2D 1A B8 EE C0 0A", gg.TYPE_BYTE)
  gg.refineNumber("h 0A", gg.TYPE_BYTE)
  xl = gg.getResults(1)
  local tl = {}
  tl[1] = {}
  tl[1].address = xl[1].address + 0xC5
  tl[1].flags = gg.TYPE_DWORD
  tl[1].value = 536985344
  tl[1].freeze = false
  gg.setValues(tl)
gg.clearResults()
gg.toast("👁️Xray v2👀 | ON")
dt = " | 🟢"
elseif dt == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 9F ED 2D 1A B8 EE C0 0A", gg.TYPE_BYTE)
  gg.refineNumber("h 0A", gg.TYPE_BYTE)
  xll = gg.getResults(1)
  local tll = {}
  tll[1] = {}
  tll[1].address = xll[1].address + 0xC5
  tll[1].flags = gg.TYPE_DWORD
  tll[1].value = -314771968
  tll[1].freeze = false
  gg.setValues(tll)
  gg.clearResults()
gg.toast("👁️Xray v2👀 | OFF")
dt = " | 🔴"
end
end

df = " | 🔴"
function xray1()
if df == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h D0 F8 98 00 04 38 B0 FA 80 F0', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 01 20 70 47 04 38 B0 FA 80 F0',gg.TYPE_BYTE)
gg.clearResults()
gg.toast("👁️Xray v1👀 | ON")
df = " | 🟢"
elseif df == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 01 20 70 47 04 38 B0 FA 80 F0', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h D0 F8 98 00 04 38 B0 FA 80 F0', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("👁️Xray v1👀 | OFF")
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
gg.searchNumber('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 DD 50 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 DD 50 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 DD 50 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 D1 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 DD 50 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F6 B9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 DD 50 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Smoke Slow 75%")
end

function SLOWL()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 E9 30 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 DD 50 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 D1 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F6 B9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Smoke Slow little")
end

function INF()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 DD 50 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 D1 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F6 B9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Smoke Inf")
end

function VERYSLOW()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F6 B9 30 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F6 B9 30 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F6 B9 30 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 DD 50 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F6 B9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 D1 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F6 B9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Smoke Very Slow")
end

function SLOW()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 D1 70 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 D1 70 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 D1 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 DD 50 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 D1 70 09 E0 0D 2C',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F6 B9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 40 F2 D1 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Smoke Slow")
end

function NORMAL()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h 0B 06 40 F2 DD 50 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 E9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 4F F6 FF 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F2 D1 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 0B 06 40 F6 B9 30 09 E0 0D 2C', gg.TYPE_BYTE)
gg.getResults(99)
gg.editAll('h 0B 06 4F F4 FA 70 09 E0 0D 2C', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Smoke Normal")
end

dc = " | 🔴"
function ads()
if dc == " | 🔴" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h CA D4 5A 00 F0 B5 03 AF 2D E9 00 0F', gg.TYPE_BYTE) -- giveCampaignAdReward
gg.getResults(99)
gg.editAll('h CA D4 5A 00 00 20 70 47 2D E9 00 0F', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 02 69 10 7E 08 B1 00 20', gg.TYPE_BYTE) -- isRewardedAdWatchedSuccessfully
gg.getResults(99)
gg.editAll('h 01 21 70 47 08 B1 00 20',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h D0 B5 02 AF 04 46 00 69 08', gg.TYPE_BYTE) -- hasEnoughTimePassedSinceLastAd
gg.getResults(99)
gg.editAll('h 01 21 70 47 04 46 00 69 08',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 00 00 03 48 78 44 00 68 00 68 00', gg.TYPE_BYTE) -- isSearchingAnyGame
gg.getResults(99)
gg.editAll('h 00 00 01 21 70 47 00 68 00 68 00', gg.TYPE_BYTE)
gg.clearResults()
gg.toast('⏲️Bypass Ads⏲️ | ON')
dc = " | 🟢"
elseif dc == " | 🟢" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('h CA D4 5A 00 00 20 70 47 2D E9 00 0F', gg.TYPE_BYTE) -- giveCampaignAdReward
gg.getResults(99)
gg.editAll('h CA D4 5A 00 F0 B5 03 AF 2D E9 00 0F', gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 01 21 70 47 08 B1 00 20', gg.TYPE_BYTE) -- isRewardedAdWatchedSuccessfully
gg.getResults(99)
gg.editAll('h 02 69 10 7E 08 B1 00 20',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 01 21 70 47 04 46 00 69 08', gg.TYPE_BYTE) -- hasEnoughTimePassedSinceLastAd
gg.getResults(99)
gg.editAll('h D0 B5 02 AF 04 46 00 69 08',gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber('h 00 00 01 21 70 47 00 68 00 68 00', gg.TYPE_BYTE) -- isSearchingAnyGame
gg.getResults(99)
gg.editAll('h 00 00 03 48 78 44 00 68 00 68 00', gg.TYPE_BYTE)
gg.clearResults()
gg.toast("⏲️Bypass Ads⏲️ | OFF")
dc = " | 🔴"
end
end

function exits()
gg.clearResults()
gg.clearList()
gg.toast("Made By 💪modhacker#3877💪")
gg.setVisible(true)
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
} ,nil, "Script Made By modhacker#3877")

if menu == nil then regoinss()
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
if menu[11] == true then regoinss() end end
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