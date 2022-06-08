-- Created by EthicFps#5233


local playerrank = exports.esx_xp:ESXP_GetRank()

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

print('Created by EthicFps')

local pVeh = GetVehiclePedIsIn(pPed, false)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(2000)     
     if exports.esx_xp:ESXP_GetRank() < 3 then  -- get player rank and check if it is under 3
         SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0) 
         SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.7)
         SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), true), 25.0)
     end
end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        playerrank = exports.esx_xp:ESXP_GetRank()
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if playerrank < 3 then
            DisableControlAction(pPed, 24, true)
            DisableControlAction(pPed, 69, true)
            DisableControlAction(pPed, 70, true)   
            DisableControlAction(pPed, 92, true)   
            DisableControlAction(pPed, 140, true)   
            DisableControlAction(pPed, 142, true)
            DisableControlAction(pPed, 141, true) 
            DisableControlAction(pPed, 261, true)
            DisableControlAction(pPed, 262, true) 
            DisableControlAction(pPed, 37, true)
            DisableControlAction(pPed, 53, true) 
            DisableControlAction(pPed, 54, true)
            DisableControlAction(pPed, 99, true) 
            DisableControlAction(pPed, 157, true)
            DisableControlAction(pPed, 158, true) 
            DisableControlAction(pPed, 159, true)
            DisableControlAction(pPed, 160, true) 
            DisableControlAction(pPed, 161, true)
            DisableControlAction(pPed, 162, true) 
            DisableControlAction(pPed, 163, true)
            DisableControlAction(pPed, 164, true) 
            DisableControlAction(pPed, 165, true) 
            DisableControlAction(pPed, 257, true) 
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(40)
        if not IsDisabledControlReleased(pPed, 24) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.') -- ('~r~You can't do this')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 69) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 70) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 92) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 140) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 141) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 142) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 37) and playerrank < 3 then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        end
    end
end) 
