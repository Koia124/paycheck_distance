ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback("paycheck", function(source, cb) 
   local xPlayer = ESX.GetPlayerFromId(source) 

   if xPlayer then

    local salario = xPlayer.job.grade_salary

    

    cb(salario)
    xPlayer.addAccountMoney('bank', salario) 
    
   end
end)

ESX.RegisterServerCallback("checkjb", function(source, cb) 
    local xPlayer = ESX.GetPlayerFromId(source) 
 
    if xPlayer then
        local job = xPlayer.job.name
        
        if job ~= nil then
            cb(job)
        end
    end
 end)