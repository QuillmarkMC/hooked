scoreboard players add $ExtraHealth.State lobbysigns 1
execute unless score $ExtraHealth.State lobbysigns matches 0..4 run scoreboard players set $ExtraHealth.State lobbysigns 0
execute if score $ExtraHealth.State lobbysigns matches 0 run scoreboard players set $ExtraHealthCost shop 70
execute if score $ExtraHealth.State lobbysigns matches 1 run scoreboard players set $ExtraHealthCost shop 65
execute if score $ExtraHealth.State lobbysigns matches 2 run scoreboard players set $ExtraHealthCost shop 50
execute if score $ExtraHealth.State lobbysigns matches 3 run scoreboard players set $ExtraHealthCost shop 90
execute if score $ExtraHealth.State lobbysigns matches 4 run scoreboard players set $ExtraHealthCost shop 75
