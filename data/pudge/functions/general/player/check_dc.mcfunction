#check a reconnecting player if they are in this game session
clear @s
scoreboard players set @s leave 0
execute unless score @s matchID = $Global matchID run tag @s add playerReset
execute unless score $state gamestate matches 1 run tag @s add playerReset