# @s = grabbed player
# @e[type=armor_stand,tag=tempGrabTag,limit=1] = armor stand they are riding
# @a[tag=tempGrabTag,limit=1] = player who grabbed

#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/grab/end

#tag grabber
scoreboard players operation $Temp_Player grabID = @s grabID
execute as @a[tag=isGamer] if score @s entityid = $Temp_Player grabID run tag @s add tempGrabTag
#place ability on cooldown if called from game/ability/grab/tick OR game/ability/melee/damage
execute if score #PlaceGrabOnCooldown cdGrab matches 1 run scoreboard players operation @a[tag=tempGrabTag,limit=1] cdGrab = @a[tag=tempGrabTag,limit=1] cdGrabCurrent
execute if score #PlaceGrabOnCooldown cdGrab matches 1 run tag @a[tag=tempGrabTag,limit=1] add hasCooldown
scoreboard players set #PlaceGrabOnCooldown cdGrab 0
tag @a[tag=tempGrabTag,limit=1] remove holdingPlayer
advancement grant @a[tag=tempGrabTag,limit=1] only pudge:inv_change
tag @a[tag=tempGrabTag,limit=1] remove tempGrabTag

#tag armor stand belonging to grabbed player
execute as @e[type=armor_stand,tag=grabHoldingMarker] if score @s grabID = $Temp_Player grabID run tag @s add tempGrabTag
#kill armor stand
kill @e[type=armor_stand,tag=tempGrabTag,limit=1]
#remove tags and reset scoreboards on target
scoreboard players reset @s grabID
tag @s remove PreventGrab
advancement grant @s only pudge:inv_change
