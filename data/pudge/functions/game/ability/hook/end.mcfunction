#debug message
execute if score $Debug var matches 1.. run say game/ability/hook/end.mcfunction

#tag marker belonging to hooked player
scoreboard players operation $Temp_Marker hookID = @s entityid
execute as @e[type=marker,tag=hookMovementMarker] if score @s hookID = $Temp_Marker hookID run tag @s add tempHookTag
#kill marker
kill @e[type=marker,tag=tempHookTag,limit=1]
#remove tags and reset scoreboards on attacker and target
scoreboard players reset @s hookTimer
#remove stun (attribute movementspeed)
attribute @s generic.movement_speed base set 0.1
#get player out of ground
execute at @s unless block ~ ~ ~ #pudge:ignore_teleport run tp @s ~ ~1 ~