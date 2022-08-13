#debug message
execute if score $Debug var matches 1.. run say game/ability/hook/begin.mcfunction

#tag hit target with ID of source player
scoreboard players operation @a[tag=tempReceiverTag,limit=1] hookID = @s entityid
#summon marker and tag it with ID of source player
execute at @a[tag=tempReceiverTag,limit=1] run summon marker ~ ~ ~ {Tags:["tempHookMarkerTag","hookMovementMarker"]}
scoreboard players operation @e[type=marker,tag=tempHookMarkerTag,limit=1] hookID = @a[tag=tempReceiverTag,limit=1] entityid
#set scoreboards of target for maximum hook length
scoreboard players operation @a[tag=tempReceiverTag,limit=1] hookTimer = $HookLength abilityVar
#apply stun (attribute movementspeed)
attribute @a[tag=tempReceiverTag,limit=1] generic.movement_speed base set 0

tag @e[type=marker,tag=tempHookMarkerTag,limit=1] remove tempHookMarkerTag