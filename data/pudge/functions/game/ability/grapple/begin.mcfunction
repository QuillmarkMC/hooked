#debug message
execute if score $Debug var matches 1.. run say game/ability/grapple/begin.mcfunction

# @s = attacker
#if receiver is already in a grapple effect, end first one before beginning new one
execute as @a[tag=tempReceiverTag,limit=1] if score @s grappleTimer matches 1.. run function pudge:game/ability/grapple/end

#tag hit target with ID of source
scoreboard players operation @a[tag=tempReceiverTag,limit=1] grappleID = @s entityid
#summon marker and tag it with ID of source
execute at @a[tag=tempReceiverTag,limit=1] run summon marker ~ ~ ~ {Tags:["tempGrappleMarkerTag","grappleMovementMarker"]}
scoreboard players operation @e[type=marker,tag=tempGrappleMarkerTag,limit=1] grappleID = @a[tag=tempReceiverTag,limit=1] entityid
#set scoreboards of target for maximum hook length
scoreboard players operation @a[tag=tempReceiverTag,limit=1] grappleTimer = $HookLength abilityVar
#apply stun (attribute movementspeed)
attribute @a[tag=tempReceiverTag,limit=1] generic.movement_speed base set 0
effect give @a[tag=tempReceiverTag,limit=1] levitation 999999 255 true


tag @e[type=marker,tag=tempGrappleMarkerTag,limit=1] remove tempGrappleMarkerTag