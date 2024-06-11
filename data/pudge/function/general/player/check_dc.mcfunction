#check a reconnecting player if they are in this game session
clear @s
scoreboard players set @s leave 0
execute unless score @s matchID = $Global matchID run tag @s add playerReset
execute unless score $State var matches 2 run tag @s add playerReset
execute if entity @s[team=spectator] run tag @s add playerReset

execute if score $State var matches 2 unless entity @s[tag=playerReset] run function pudge:general/death/on_death