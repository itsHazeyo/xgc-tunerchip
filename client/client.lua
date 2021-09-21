local menu = false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent("xgc-tuner:useChip")
AddEventHandler("xgc-tuner:useChip", function()
    Citizen.CreateThread(function()
        Citizen.Wait(1000)
        ESX.ShowNotification("Connecting to ECU...")
        Citizen.Wait(5000)

        TriggerEvent("xgc-tuner:openTuner", source)
    end)
end)