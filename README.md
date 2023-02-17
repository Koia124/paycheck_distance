# PAYCHECK SYSTEM FOR ESX


# CONFIGURATION TUTORIAL

  1) Delete the file in the path: es_extended/server/paycheck.lua
  2) Go to es_extended config file and remove Config.PaycheckInterval and Config.EnableSocietyPayouts
  3) Go to es_extended/server/common.lua line 96 and remove the StartPayCheck function
  4) Go to your server.cfg and add: start paycheck_distance 
