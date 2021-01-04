
local standardVolumeOutput = 1.0;

RegisterNetEvent('ORPSound:PlayOnOne')
AddEventHandler('ORPSound:PlayOnOne', function(soundFile, soundVolume)
    SendNUIMessage({
        transactionType     = 'playSound',
        transactionFile     = soundFile,
        transactionVolume   = soundVolume
    })
end)

RegisterNetEvent('ORPSound:StopSounz')
AddEventHandler('ORPSound:StopSounz', function(soundFile, soundVolume)
    SendNUIMessage({
        transactionType     = 'stopSound',
        transactionFile     = soundFile,
        transactionVolume   = soundVolume
    })
end)

RegisterNetEvent('ORPSound:PlayOnAll')
AddEventHandler('ORPSound:PlayOnAll', function(soundFile, soundVolume)
    SendNUIMessage({
        transactionType     = 'playSound',
        transactionFile     = soundFile,
        transactionVolume   = soundVolume
    })
end)

RegisterNetEvent('ORPSound:PlayWithinDistance')
AddEventHandler('ORPSound:PlayWithinDistance', function(playerNetId, maxDistance, soundFile, soundVolume, coords)
    local lCoords = GetEntityCoords(GetPlayerPed(-1))
    local ped = GetPlayerPed(GetPlayerFromServerId(playerNetId))
    local eCoords = coords
    print("Just for you",eCoords.x,eCoords.y,eCoords.z)
    if(Vdist(lCoords.x, lCoords.y, lCoords.z, eCoords.x, eCoords.y, eCoords.z) < maxDistance) then
        SendNUIMessage({
            transactionType     = 'playSound',
            transactionFile     = soundFile,
            transactionVolume   = soundVolume
        })
    end
end)


