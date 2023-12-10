#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/grapple/begin

# @s = attacker
#if receiver is already in a grapple effect, end first one before beginning new one
execute as @a[tag=tempReceiverTag,limit=1] if score @s grappleTimer matches 1.. run function pudge:game/ability/grapple/end

#tag hit target with ID of source
scoreboard players operation @a[tag=tempReceiverTag,limit=1] grappleID = @s entityid
#summon armor stand and tag it with ID of source
execute at @a[tag=tempReceiverTag,limit=1] run summon armor_stand ~ ~0.5 ~ {Marker:true,Invisible:true,Tags:["tempGrappleMarkerTag","grappleMovementMarker"]}
scoreboard players operation @e[type=armor_stand,tag=tempGrappleMarkerTag,limit=1] grappleID = @a[tag=tempReceiverTag,limit=1] entityid
#set scoreboards of target for maximum hook length
scoreboard players operation @a[tag=tempReceiverTag,limit=1] grappleTimer = $HookLength abilityVar

#make player ride armor stand
ride @a[tag=tempReceiverTag,limit=1] mount @e[type=armor_stand,tag=tempGrappleMarkerTag,limit=1]

tag @e[type=armor_stand,tag=tempGrappleMarkerTag,limit=1] remove tempGrappleMarkerTag