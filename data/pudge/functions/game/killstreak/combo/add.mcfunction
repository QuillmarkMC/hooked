#add one to combo track
scoreboard players add @s combo 1

#reset combo timer
execute if score @s combo matches 1 run scoreboard players operation @s comboTimer = $DoubleKill comboTimer
execute if score @s combo matches 2 run scoreboard players operation @s comboTimer = $TripleKill comboTimer
execute if score @s combo matches 3 run scoreboard players operation @s comboTimer = $UltraKill comboTimer
execute if score @s combo matches 4.. run scoreboard players operation @s comboTimer = $Rampage comboTimer

#play sound effect if necessary
#double
execute if score @s combo matches 2 run scoreboard players set $Temp killstreak 1
#triple
execute if score @s combo matches 3 run scoreboard players set $Temp killstreak 2
#ultra
execute if score @s combo matches 4 run scoreboard players set $Temp killstreak 3
#rampage
execute if score @s combo matches 5 run scoreboard players set $Temp killstreak 4
#combo whore
execute if score @s combo matches 6 run scoreboard players set $Temp killstreak 5