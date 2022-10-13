scoreboard players add $Lifesteal.State lobbysigns 1
execute unless score $Lifesteal.State lobbysigns matches 0..4 run scoreboard players set $Lifesteal.State lobbysigns 0
execute if score $Lifesteal.State lobbysigns matches 0 run scoreboard players set $LifestealCost shop 70
execute if score $Lifesteal.State lobbysigns matches 1 run scoreboard players set $LifestealCost shop 65
execute if score $Lifesteal.State lobbysigns matches 2 run scoreboard players set $LifestealCost shop 50
execute if score $Lifesteal.State lobbysigns matches 3 run scoreboard players set $LifestealCost shop 90
execute if score $Lifesteal.State lobbysigns matches 4 run scoreboard players set $LifestealCost shop 75
