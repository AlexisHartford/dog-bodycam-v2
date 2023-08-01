QBCore = exports['qb-core']:GetCoreObject()
local acik = false

TriggerEvent("QBCore:GetObject", function (obj) QBCore = obj end)



RegisterNetEvent("booleanuodate")
AddEventHandler("booleanuodate", function (bool)
    acik = bool
end)

QBCore.Functions.CreateUseableItem("bodycam" , function(source, item)
    local _src = source
    TriggerClientEvent("dog-bodycam:openBoy", _src, item, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
end)

RegisterServerEvent('dog-bodycam:check')
AddEventHandler('dog-bodycam:check', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName('bodycam') == nil then
            TriggerClientEvent("dog-bodycam:openBoy", src, item, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
        end    

end)


if Config.Debug then
    QBCore.Commands.Add('debugbodycam', 'debugging dog-bodycam', {}, false, function(source, args)
    local _src = source
    TriggerClientEvent("dog-bodycam:openBoy", _src, item, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
end)
end


