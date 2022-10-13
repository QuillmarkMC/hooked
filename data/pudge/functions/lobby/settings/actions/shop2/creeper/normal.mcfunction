scoreboard players add $Creeper.State lobbysigns 1
execute unless score $Creeper.State lobbysigns matches 0..4 run scoreboard players set $Creeper.State lobbysigns 0
execute if score $Creeper.State lobbysigns matches 0 run scoreboard players set $CreeperCost shop 65
execute if score $Creeper.State lobbysigns matches 1 run scoreboard players set $CreeperCost shop 60
execute if score $Creeper.State lobbysigns matches 2 run scoreboard players set $CreeperCost shop 45
execute if score $Creeper.State lobbysigns matches 3 run scoreboard players set $CreeperCost shop 85
execute if score $Creeper.State lobbysigns matches 4 run scoreboard players set $CreeperCost shop 70
