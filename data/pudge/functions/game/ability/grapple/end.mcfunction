#debug message
execute if score $Debug var matches 1.. run say game/ability/grapple/end.mcfunction

#tag armor stand belonging to hooked player
scoreboard players operation $Temp_Marker grappleID = @s entityid
execute as @e[type=armor_stand,tag=grappleMovementMarker] if score @s grappleID = $Temp_Marker grappleID run tag @s add tempGrappleTag
#kill armor stand
kill @e[type=armor_stand,tag=tempGrappleTag,limit=1]
#remove tags and reset scoreboards on attacker and target
scoreboard players reset @s grappleTimer
scoreboard players reset @s grappleID

#get player out of ground
execute at @s unless block ~ ~ ~ #pudge:ignore_teleport positioned ~ ~1 ~ align y run tp @s ~ ~ ~