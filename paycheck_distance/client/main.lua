ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local Times = Config.Interval*60000

Citizen.CreateThread(function()
    while true do
        for _,job in pairs(Config.Jobs) do
            local playerPos = GetEntityCoords(player)
            ESX.TriggerServerCallback('checkjb', function(Job)
                if job.distMin == true then
                    if Job == _ then
                        if GetDistanceBetweenCoords(job.pos, GetEntityCoords(PlayerPedId())) < job.dist then
                            ESX.TriggerServerCallback("paycheck", function(sal) 
                                ESX.ShowNotification(Config.Language.Received..": "..sal)
                            end)
                        else
                            ESX.ShowNotification(Config.Language.NotReceived)
                        end
                    end
                else
                    if Job == _ then
                        ESX.TriggerServerCallback("paycheck", function() end)
                        ESX.ShowNotification(Config.Language.Received)
                    end
                end
            end)
            Citizen.Wait(Times)
        end
    end
end)
