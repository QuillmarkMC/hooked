#debug message
execute if score $Debug var matches 1.. run say game/ability/hook/end.mcfunction

#tag armor stand belonging to hooked player
scoreboard players operation $Temp_Marker hookID = @s entityid
execute as @e[type=armor_stand,tag=hookMovementMarker] if score @s hookID = $Temp_Marker hookID run tag @s add tempHookTag
#kill armor stand
kill @e[type=armor_stand,tag=tempHookTag,limit=1]
#remove tags and reset scoreboards on attacker and target
scoreboard players reset @s hookTimer
scoreboard players reset @s hookID

#get player out of ground
execute at @s unless block ~ ~ ~ #pudge:ignore_teleport positioned ~ ~1 ~ align y run tp @s ~ ~ ~