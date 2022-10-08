#debug message
execute if score $Debug var matches 1.. run say lobby/tips/generate.mcfunction
#randomly pick a tip to display
scoreboard players set #Temp lobbyvar 0
#rng
scoreboard players set $max rng 10
function pudge:general/rng/rand
execute unless score $out rng = $LastTip lobbyvar run function pudge:lobby/tips/display
execute if score $out rng = $LastTip lobbyvar unless score #Temp lobbyvar matches 1.. run function pudge:lobby/tips/generate