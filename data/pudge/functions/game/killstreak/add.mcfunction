#add 1 to streak
scoreboard players add @s killstreak 1

#play sound effect based on length of streak

#increase bounty based on length of streak
execute if score @s killstreak matches 3 run scoreboard players operation $Num1 math = @s bounty
execute if score @s killstreak matches 3 run function pudge:general/math/times_1.5
execute if score @s killstreak matches 3 run scoreboard players operation @s bounty = $Num1 math
#glowing marks players with a higher kill bounty
execute if score @s killstreak matches 3 run effect give @s glowing 999999 0 true

execute if score @s killstreak matches 5 run scoreboard players operation $Num1 math = @s bounty
execute if score @s killstreak matches 5 run function pudge:general/math/times_1.5
execute if score @s killstreak matches 5 run scoreboard players operation @s bounty = $Num1 math

execute if score @s killstreak matches 7 run scoreboard players operation $Num1 math = @s bounty
execute if score @s killstreak matches 7 run function pudge:general/math/times_1.5
execute if score @s killstreak matches 7 run scoreboard players operation @s bounty = $Num1 math

execute if score @s killstreak matches 9 run scoreboard players operation $Num1 math = @s bounty
execute if score @s killstreak matches 9 run function pudge:general/math/times_1.5
execute if score @s killstreak matches 9 run scoreboard players operation @s bounty = $Num1 math

#set value to announce kill
execute if score @s killstreak matches 3 run scoreboard players set $Temp killstreak 10
execute if score @s killstreak matches 4 run scoreboard players set $Temp killstreak 11
execute if score @s killstreak matches 5 run scoreboard players set $Temp killstreak 12
execute if score @s killstreak matches 6 run scoreboard players set $Temp killstreak 13
execute if score @s killstreak matches 7 run scoreboard players set $Temp killstreak 14
execute if score @s killstreak matches 8 run scoreboard players set $Temp killstreak 15
execute if score @s killstreak matches 9.. run scoreboard players set $Temp killstreak 16