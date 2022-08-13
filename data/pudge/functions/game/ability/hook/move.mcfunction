#debug message
execute if score $Debug var matches 1.. run say game/ability/hook/move.mcfunction

#this function is executed every tick as a player who has been hooked by an angler
#progress timer
scoreboard players remove @s hookTimer 1
#tag source of hook
scoreboard players operation $Temp_Player hookID = @s hookID
execute as @a[tag=isGamer] if score @s entityid = $Temp_Player hookID run tag @s add tempHookTag
#tag marker belonging to hooked player
scoreboard players operation $Temp_Marker hookID = @s entityid
execute as @e[type=marker,tag=hookMovementMarker] if score @s hookID = $Temp_Marker hookID run tag @s add tempHookTag
#if target died in last tick, end effect
execute if score @s deaths matches 1.. run scoreboard players set @s hookTimer -1
#if within 1.5 blocks of angler, end effect
execute at @s if entity @a[tag=tempHookTag,distance=..1.5] run scoreboard players set @s hookTimer -1
#face marker towards angler, tp small distance towards them
execute as @e[type=marker,tag=tempHookTag,limit=1] at @s facing entity @a[tag=tempHookTag,limit=1] feet run tp @s ^ ^ ^0.5 facing entity @a[tag=tempHookTag,limit=1]
#check if current block ~ ~ ~ and ~ ~1 ~ are air, if not then end effect immediately
#execute at @e[type=marker,tag=tempHookTag,limit=1] unless block ~ ~ ~ #ctf:empty run scoreboard players set @s hookTimer -1
execute at @e[type=marker,tag=tempHookTag,limit=1] unless block ~ ~1 ~ #pudge:empty run scoreboard players set @s hookTimer -1
#if both blocks air, teleport target to marker
execute unless score @s hookTimer matches ..-1 at @e[type=marker,tag=tempHookTag,limit=1] run tp @s ~ ~ ~ ~ ~
#render particles using raycasting to look like a line pulling the player
execute unless score @s hookTimer matches ..-1 at @s positioned ~ ~1 ~ run function pudge:game/ability/hook/particles/raycast

tag @e[tag=tempHookTag] remove tempHookTag

#if lasted longer than 3 seconds (or any other checks in this function failed), end effect
execute if score @s hookTimer matches ..0 run function pudge:game/ability/hook/end