# PAYCHECK SYSTEM FOR ESX


## CONFIGURATION TUTORIAL

  1) Delete the file in the path: es_extended/server/paycheck.lua
  2) Go in config file of es_extended and remove Config.PaycheckInterval and Config.EnableSocietyPayouts
  3) Go in es_extended/server/common.lua line 96 and remove the StartPayCheck function
  4) Go in your server.cfg and add: start paycheck_distance
