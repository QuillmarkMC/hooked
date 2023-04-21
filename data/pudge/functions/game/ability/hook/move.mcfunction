#debug message
#execute if score $Debug var matches 1.. run say game/ability/hook/move.mcfunction
# @s = receiver

#this function is executed every tick as a player who has been hooked
#progress timer
scoreboard players remove @s hookTimer 1
#tag source of hook
scoreboard players operation $Temp_Player hookID = @s hookID
execute as @a[tag=isGamer] if score @s entityid = $Temp_Player hookID run tag @s add tempHookTag
#tag armor stand belonging to hooked player
scoreboard players operation $Temp_Marker hookID = @s entityid
execute as @e[type=armor_stand,tag=hookMovementMarker] if score @s hookID = $Temp_Marker hookID run tag @s add tempHookTag
#if target died in last tick, end effect
#execute if score @s deaths matches 1.. run scoreboard players set @s hookTimer -1
#if source player is dead, end effect
execute if entity @a[tag=tempHookTag,tag=dead,limit=1] run scoreboard players set @s hookTimer -1
#if within 1.5 blocks of source, end effect
execute at @s if entity @a[tag=tempHookTag,distance=..1.5,limit=1] run scoreboard players set @s hookTimer -1
#control hook movement
execute unless score @s hookTimer matches ..-1 if score @a[tag=tempHookTag,limit=1] shopItem.Retract matches 1.. run function pudge:game/ability/hook/move/fast
execute unless score @s hookTimer matches ..-1 if score @a[tag=tempHookTag,limit=1] shopItem.Retract matches ..0 run function pudge:game/ability/hook/move/slow
#check if head is in a block, if so then end effect immediately
execute at @e[type=armor_stand,tag=tempHookTag,limit=1] unless block ~ ~1 ~ #pudge:empty run scoreboard players set @s hookTimer -1
#if both blocks air, rotate armor stand as target force target to ride armor stand
execute unless score @s hookTimer matches ..-1 run ride @s mount @e[type=armor_stand,tag=tempHookTag,limit=1]
#render particles using raycasting to look like a line pulling the player
execute unless score @s hookTimer matches ..-1 at @s positioned ~ ~1 ~ run function pudge:game/ability/hook/particles/raycast

tag @e[tag=tempHookTag] remove tempHookTag

#if lasted longer than allowed time (or any other checks in this function failed), end effect
execute if score @s hookTimer matches ..0 run function pudge:game/ability/hook/end