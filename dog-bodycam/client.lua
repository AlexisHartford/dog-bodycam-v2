local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

local year --[[ integer ]], month --[[ integer ]], day --[[ integer ]], hour --[[ integer ]], minute --[[ integer ]], second --[[ integer ]] = GetLocalTime()

RegisterNetEvent("bodycam:time")
AddEventHandler("bodycam:time", function (h,m,s)
    SendNUIMessage({
        action = "zamanguncelle",
        zaman = month.."/"..day.."/"..year.." ".." - "..h..":"..m..":"..s,
    })
end)

Citizen.CreateThread(function()
  while true do
    while acik do
        local year --[[ integer ]], month --[[ integer ]], day --[[ integer ]], hour --[[ integer ]], minute --[[ integer ]], second --[[ integer ]] = GetLocalTime()
            SendNUIMessage({
                action = "zamanguncelle",
                zaman = month.."/"..day.."/"..year.." ".." - "..hour..":"..minute..":"..second.."     ",
            })
            TriggerServerEvent('dog-bodycam:check')
            Citizen.Wait(1000)
        end
            Citizen.Wait(1000)
    end
end)

RegisterNetEvent("dog-bodycam:openBoy")
AddEventHandler("dog-bodycam:openBoy", function (item, h,m,s)
    local Player = QBCore.Functions.GetPlayerData()
    if Player.job.name == "police" then
        if Player.charinfo.gender == "0" then
            gender = Config.Gender1
        else
            gender = Config.Gender2
        end
        if acik then
            acik = false
            SendNUIMessage({
                action = "hidebodycam"
            })
            if Config.okokNotify then
                exports['okokNotify']:Alert('Success', 'You stopped your Body Camera!', 5000, 'info')
            elseif Config.QBNotify then
                TriggerEvent("QBCore:Notify", "Successfully you stopped your Body Camera!", "success", 2500)
                end
            TriggerServerEvent("booleanuodate", false)
            
             else
            SendNUIMessage({
                action = "showbodycam",
                image = Config.PoliceImage,
                player = Player.job.grade.name.. " "..gender.." "..Player.charinfo.lastname,
                callsign = "["..Player.metadata['callsign'].."]",
                agency = "[Los Angeles Police Department]",
                tarih = month.."/"..day.."/"..year.." ".." - "..h..":"..m..":"..s.."     ",
            })
            if Config.okokNotify then
            exports['okokNotify']:Alert('Success', 'You turned on your Body Camera!', 5000, 'info')
            elseif Config.QBNotify then
            TriggerEvent("QBCore:Notify", "Success you turned on your Body Camera!", "success", 2500)
        end
        
            TriggerServerEvent("booleanuodate", true)
            acik = true
        end
    elseif Player.job.name == "ambulance" then
        if Player.charinfo.gender == "0" then
            gender = Config.Gender1
        else
            gender = Config.Gender2
        end
        if acik then
            acik = false
            SendNUIMessage({
                action = "hidebodycam"
            })
            if Config.okokNotify then
                exports['okokNotify']:Alert('Success', 'You stopped your Body Camera!', 5000, 'info')
            elseif Config.QBNotify then
                TriggerEvent("QBCore:Notify", "Successfully you stopped your Body Camera!", "success", 2500)
        
                end
            TriggerServerEvent("booleanuodate", false)
            
             else
            SendNUIMessage({
                action = "showbodycam",
                image = Config.EMSImage,
                player = Player.job.grade.name.. " "..gender.." "..Player.charinfo.lastname,
                callsign = "["..Player.metadata['callsign'].."]",
                agency = "[Los Angeles EMS Department]",
                tarih = month.."/"..day.."/"..year.." ".." - "..h..":"..m..":"..s.."     ",
            })
            if Config.okokNotify then
            exports['okokNotify']:Alert('Success', 'You turned on your Body Camera!', 5000, 'info')
            elseif Config.QBNotify then
            TriggerEvent("QBCore:Notify", "Success you turned on your Body Camera!", "success", 2500)
        end
        
            TriggerServerEvent("booleanuodate", true)
            acik = true
        end
    else
        if Player.charinfo.gender == "0" then
            gender = Config.Gender1
        else
            gender = Config.Gender2
        end
        if acik then
            acik = false
            SendNUIMessage({
                action = "hidebodycam"
            })
            if Config.okokNotify then
                exports['okokNotify']:Alert('Success', 'You stopped your Body Camera!', 5000, 'info')
            elseif Config.QBNotify then
                TriggerEvent("QBCore:Notify", "Successfully you stopped your Body Camera!", "success", 2500)
                end
            TriggerServerEvent("booleanuodate", false)
            
             else
            SendNUIMessage({
                action = "showbodycam",
                image = Config.CIVImage,
                player = gender.." "..Player.charinfo.firstname.." "..Player.charinfo.lastname,
                callsign = "",
                agency = "[Los Angeles Civ]",
                tarih = month.."/"..day.."/"..year.." ".." - "..h..":"..m..":"..s.."     ",
            })
            if Config.okokNotify then
            exports['okokNotify']:Alert('Success', 'You turned on your Body Camera!', 5000, 'info')
            elseif Config.QBNotify then
            TriggerEvent("QBCore:Notify", "Success you turned on your Body Camera!", "success", 2500)
        end
        
            TriggerServerEvent("booleanuodate", true)
            acik = true
        end
    end
end)
