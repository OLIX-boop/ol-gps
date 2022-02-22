-----------------------------------------------------------
------------ Made By 𝓞𝓛𝓘𝓧 𝓨𝓣 (っ◔◡◔)っ#4222 ------------
-----------------------------------------------------------
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterCommand("gps", function(source, args )
    local argString = table.concat(args, " ")
    if argString == "" or argString == " " then 
        ESX.ShowNotification("Mettere un numero dopo il comando.")
    end
    if GPS[argString] then
        local coord = GPS[argString]
        ESX.ShowNotification("GPS impostato al civico "..argString)
        SetNewWaypoint(coord.x, coord.y)
    else 
        ESX.ShowNotification("Civico non trovato.")
    end
end)
