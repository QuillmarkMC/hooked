scoreboard players add $VictoryTime.State lobbysigns 1
execute unless score $VictoryTime.State lobbysigns matches 0..6 run scoreboard players set $VictoryTime.State lobbysigns 0
execute if score $VictoryTime.State lobbysigns matches 0 run scoreboard players set $TotalTimeMinutes var 15
execute if score $VictoryTime.State lobbysigns matches 1 run scoreboard players set $TotalTimeMinutes var 10
execute if score $VictoryTime.State lobbysigns matches 2 run scoreboard players set $TotalTimeMinutes var 5
execute if score $VictoryTime.State lobbysigns matches 3 run scoreboard players set $TotalTimeMinutes var 60
execute if score $VictoryTime.State lobbysigns matches 4 run scoreboard players set $TotalTimeMinutes var 45
execute if score $VictoryTime.State lobbysigns matches 5 run scoreboard players set $TotalTimeMinutes var 30
execute if score $VictoryTime.State lobbysigns matches 6 run scoreboard players set $TotalTimeMinutes var 20
