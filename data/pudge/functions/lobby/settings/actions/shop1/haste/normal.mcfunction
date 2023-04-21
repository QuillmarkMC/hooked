scoreboard players add $Haste.State lobbysigns 1
execute unless score $Haste.State lobbysigns matches 0..4 run scoreboard players set $Haste.State lobbysigns 0
execute if score $Haste.State lobbysigns matches 0 run scoreboard players set $HasteCost shop 10
execute if score $Haste.State lobbysigns matches 1 run scoreboard players set $HasteCost shop 5
execute if score $Haste.State lobbysigns matches 2 run scoreboard players set $HasteCost shop 30
execute if score $Haste.State lobbysigns matches 3 run scoreboard players set $HasteCost shop 20
execute if score $Haste.State lobbysigns matches 4 run scoreboard players set $HasteCost shop 15
