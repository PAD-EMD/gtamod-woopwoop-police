-------------------------------------------------------
-- Désactiver la recherche par les forces de l'ordre --
-------------------------------------------------------
--     COPYRIGHT BY KennethDev    --
--    Modifié par Alice Massart   --

local wantedDisabled = false
local messageText, messageUntil = nil, 0

local function notify(message)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(false, true)
end

CreateThread(function()
    while true do
        local messageActive = messageText ~= nil and GetGameTimer() < messageUntil

        if wantedDisabled then
            local player = PlayerId()
            for i = 1, 15 do
                EnableDispatchService(i, false)
            end
            SetPlayerWantedLevel(player, 0, false)
            SetPlayerWantedLevelNow(player, false)
            SetPlayerWantedLevelNoDrop(player, 0, false)
            notify('Recherche désactivée')
        elseif messageActive then
            notify(messageText)
        end

        Wait((wantedDisabled or messageActive) and 0 or 250)
    end
end)

RegisterCommand('disablewanted', function()
    wantedDisabled = not wantedDisabled

    if wantedDisabled then
        print('^2[WANTED]^0 Recherche désactivée')
        messageText = nil
    else
        print('^3[WANTED]^0 Recherche réactivée')
        for i = 1, 15 do
            EnableDispatchService(i, true)
        end
        messageText = 'Recherche réactivée'
        messageUntil = GetGameTimer() + 3000
    end
end, false)

RegisterKeyMapping('disablewanted', 'Toggle Wanted Level', 'keyboard', 'F6')