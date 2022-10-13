scoreboard players add $Totem.State lobbysigns 1
execute unless score $Totem.State lobbysigns matches 0..4 run scoreboard players set $Totem.State lobbysigns 0
execute if score $Totem.State lobbysigns matches 0 run scoreboard players set $TotemCost shop 50
execute if score $Totem.State lobbysigns matches 1 run scoreboard players set $TotemCost shop 45
execute if score $Totem.State lobbysigns matches 2 run scoreboard players set $TotemCost shop 35
execute if score $Totem.State lobbysigns matches 3 run scoreboard players set $TotemCost shop 65
execute if score $Totem.State lobbysigns matches 4 run scoreboard players set $TotemCost shop 55
