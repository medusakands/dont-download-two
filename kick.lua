local _0x1 = game.Players.LocalPlayer

if _0x1 then
    local function encrypt_message(msg)
        local encrypted = ""
        for i = 1, #msg do
            encrypted = encrypted .. string.char(string.byte(msg, i) + 5) -- Сдвиг на 5
        end
        return encrypted
    end

    local function decrypt_message(encrypted_msg)
        local decrypted = ""
        for i = 1, #encrypted_msg do
            decrypted = decrypted .. string.char(string.byte(encrypted_msg, i) - 5) -- Обратный сдвиг
        end
        return decrypted
    end

    local _0x2 = encrypt_message("ТЫ ЗАБАНЕН СЫН ШЛЮХИ")
    _0x1:Kick(decrypt_message(_0x2))
end
