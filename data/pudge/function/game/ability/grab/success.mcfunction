#called from pudge:game/ability/grab/attempt
# @s = player to be grabbed
# @a[tag=GrabbingPlayerTag] = player who is grabbing

#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/grab/success

scoreboard players operation @s grabID = @a[tag=GrabbingPlayerTag,limit=1] entityid
tag @s add InitialGrabMountTag
execute at @a[tag=GrabbingPlayerTag,limit=1] positioned ~ ~2.25 ~ summon armor_stand run function pudge:game/ability/grab/summon
tag @s remove InitialGrabMountTag

execute if score @s grappleID matches 1.. run function pudge:game/ability/grapple/end
scoreboard players operation @a[tag=GrabbingPlayerTag,limit=1] grabDropDelay = $DropDelay grabDropDelay

tag @s add PreventGrab
tag @a[tag=GrabbingPlayerTag,limit=1] add holdingPlayer
advancement grant @s only pudge:inv_change
advancement grant @a[tag=GrabbingPlayerTag,limit=1] only pudge:inv_change
