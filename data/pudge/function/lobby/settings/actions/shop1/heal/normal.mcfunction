scoreboard players add $Heal.State lobbysigns 1
execute unless score $Heal.State lobbysigns matches 0..4 run scoreboard players set $Heal.State lobbysigns 0
execute if score $Heal.State lobbysigns matches 0 run scoreboard players set $HealCost shop 5
execute if score $Heal.State lobbysigns matches 1 run scoreboard players set $HealCost shop 3
execute if score $Heal.State lobbysigns matches 2 run scoreboard players set $HealCost shop 1
execute if score $Heal.State lobbysigns matches 3 run scoreboard players set $HealCost shop 10
execute if score $Heal.State lobbysigns matches 4 run scoreboard players set $HealCost shop 7
