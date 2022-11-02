#debug message
execute if score $Debug var matches 1.. run say game/ability/grapple/end.mcfunction

#tag marker belonging to hooked player
scoreboard players operation $Temp_Marker grappleID = @s entityid
execute as @e[type=marker,tag=grappleMovementMarker] if score @s grappleID = $Temp_Marker grappleID run tag @s add tempGrappleTag
#kill marker
kill @e[type=marker,tag=tempGrappleTag,limit=1]
#remove tags and reset scoreboards on attacker and target
scoreboard players reset @s grappleTimer
scoreboard players reset @s grappleID
#remove stun (attribute movementspeed)
attribute @s generic.movement_speed base set 0.1
effect clear @s levitation
#get player out of ground
execute at @s unless block ~ ~ ~ #pudge:ignore_teleport positioned ~ ~1 ~ align y run tp @s ~ ~ ~