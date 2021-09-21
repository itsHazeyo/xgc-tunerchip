ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem("tunerchip",function(source)
    local _source = source
    TriggerClientEvent("xgc-tuner:useChip",source)
end)