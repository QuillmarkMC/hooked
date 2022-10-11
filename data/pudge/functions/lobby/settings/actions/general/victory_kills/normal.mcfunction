scoreboard players add $VictoryKills.State lobbysigns 1
execute unless score $VictoryKills.State lobbysigns matches 0..5 run scoreboard players set $VictoryKills.State lobbysigns 0
#execute if score $VictoryKills.State lobbysigns matches 0 run scoreboard players set $TotalRequiredKills var 60
execute if score $VictoryKills.State lobbysigns matches 1 run scoreboard players set $TotalRequiredKills var 60
execute if score $VictoryKills.State lobbysigns matches 2 run scoreboard players set $TotalRequiredKills var 40
execute if score $VictoryKills.State lobbysigns matches 3 run scoreboard players set $TotalRequiredKills var 20
execute if score $VictoryKills.State lobbysigns matches 4 run scoreboard players set $TotalRequiredKills var 100
execute if score $VictoryKills.State lobbysigns matches 5 run scoreboard players set $TotalRequiredKills var 80