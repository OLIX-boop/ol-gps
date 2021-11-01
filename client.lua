RegisterCommand("gps", function(source, args )
    local argString = table.concat(args, " ")
    if argString == "" or argString == " " then 
        notify("Mettere un numero dopo il comando.")
    end
    if GPS[argString] then
        local coord = GPS[argString]
        notify("GPS Impostato al civico ~g~" .. argString)
        SetNewWaypoint(coord[1], coord[2])
    else 
        notify("Civico non trovato.")
    end
end)


function notify(string)  -- Metti le tue notifiche o lascia queste
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)
    DrawNotification(true, false)
end
