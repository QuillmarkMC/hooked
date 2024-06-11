#debug message
execute if score $Debug var matches 3.. run say pudge:game/ability/grapple/move

#this function is executed every tick as a player who has been grappled
#progress timer
scoreboard players remove @s grappleTimer 1
#tag source of grapple
scoreboard players operation $Temp_Player grappleID = @s grappleID
execute as @e if score @s entityid = $Temp_Player grappleID run tag @s add tempGrappleTag
#tag armor stand belonging to grappleed player
scoreboard players operation $Temp_Marker grappleID = @s entityid
execute as @e[type=armor_stand,tag=grappleMovementMarker] if score @s grappleID = $Temp_Marker grappleID run tag @s add tempGrappleMarkerTag
#if target is dead, end effect
execute if entity @s[tag=dead] run scoreboard players set @s grappleTimer -1
#if source is dead, end effect
execute if entity @e[tag=tempGrappleTag,tag=dead,limit=1] run scoreboard players set @s grappleTimer -1
#if player is hooked, end effect
execute if score @s hookTimer matches 1.. run scoreboard players set @s grappleTimer -1
#if player is grabbed, end effect
execute if score @s grabID matches 1.. run scoreboard players set @s grappleTimer -1
#if player is launched, end effect
execute if score @s launchID matches 1.. run scoreboard players set @s grappleTimer -1
#if within 1.5 blocks of source, end effect
execute at @s if entity @e[tag=tempGrappleTag,distance=..1.5,limit=1] run scoreboard players set @s grappleTimer -1
#if player dismounts, end effect
scoreboard players set #TempGrappleEnd grappleTimer 0
execute on vehicle if entity @s run scoreboard players set #TempGrappleEnd grappleTimer 1
execute unless score #TempGrappleEnd grappleTimer matches 1 run scoreboard players set @s grappleTimer -1
#control hook movement
execute unless score @s grappleTimer matches ..-1 if score @s shopItem.Retract matches 1.. run function pudge:game/ability/grapple/move/fast
execute unless score @s grappleTimer matches ..-1 if score @s shopItem.Retract matches ..0 run function pudge:game/ability/grapple/move/slow
#check if head is in a block, if so then end effect immediately
execute at @e[type=armor_stand,tag=tempGrappleMarkerTag,limit=1] unless block ~ ~1 ~ #pudge:empty run scoreboard players set @s grappleTimer -1

#render particles using raycasting to look like a line pulling the player
execute unless score @s grappleTimer matches ..-1 at @s positioned ~ ~1 ~ run function pudge:game/ability/grapple/particles/raycast

tag @e[tag=tempGrappleTag] remove tempGrappleTag
tag @e[type=armor_stand,tag=tempGrappleMarkerTag] remove tempGrappleMarkerTag

#if grapple lasted longer than the allowed time (or any other checks in this function failed), end effect
execute if score @s grappleTimer matches ..0 run function pudge:game/ability/grapple/end