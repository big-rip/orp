
RegisterServerEvent('ORP:PlayOnOne')
AddEventHandler('ORP:PlayOnOne', function(clientNetId, soundFile, soundVolume)
    TriggerClientEvent('ORPSound:PlayOnOne', clientNetId, soundFile, soundVolume)
end)


RegisterServerEvent('ORP:PlayOnSource')
AddEventHandler('ORP:PlayOnSource', function(soundFile, soundVolume)
    
    TriggerClientEvent('ORPSound:PlayOnOne', source, soundFile, soundVolume)
end)

------
RegisterServerEvent('ORP:PlayOnAll')
AddEventHandler('ORP:PlayOnAll', function(soundFile, soundVolume)
    TriggerClientEvent('ORPSound:PlayOnAll', -1, soundFile, soundVolume)
end)

----------

RegisterServerEvent("ORPSound:StopSound")
AddEventHandler('ORPSound:StopSound', function()
    TriggerClientEvent('ORPSound:StopSounz', -1, soundFile, soundVolume)
end)

------
RegisterServerEvent('ORP:PlayWithinDistance')
AddEventHandler('ORP:PlayWithinDistance', function(maxDistance, soundFile, soundVolume,coords)
    print("Source: ", source)
    print("Coords are", coords)
    TriggerClientEvent('ORPSound:PlayWithinDistance', -1, source, maxDistance, soundFile, soundVolume, coords)
end)
