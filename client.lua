Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local pVeh = GetVehiclePedIsIn(pPed, false) 

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(2000)     
     if exports.esx_xp:ESXP_GetRank() < 3 then -- get player rank and check if it is under 3
         SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
         SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
         SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), true), 25.0)
     end
end
end)

local playerrank = exports.esx_xp:ESXP_GetRank()

Citizen.CreateThread(function()
    while playerrank < 3 do 
        Citizen.Wait(6) 
            DisableControlAction(pPed, 24, true)
            DisableControlAction(pPed, 69, true)   
            DisableControlAction(pPed, 70, true)   
            DisableControlAction(pPed, 92, true)   
            DisableControlAction(pPed, 140, true)   
            DisableControlAction(pPed, 142, true)
            DisableControlAction(pPed, 141, true) 
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(40)
        if not IsDisabledControlReleased(pPed, 24) then
              ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.') -- ('~r~You can't do this')
              Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 69) then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 70) then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 92) then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 140) then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 141) then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        elseif  not IsDisabledControlReleased(pPed, 142) then
            ESX.ShowNotification('~r~Vous ne pouvez pas encore faire ceci.')
            Citizen.Wait(4000)
        end
    end
end) 
