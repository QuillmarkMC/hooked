# @s = player who initiated the grab
# @a[tag=DropPlayerTempTag] = player who is grabbed

scoreboard players operation $Temp_Player grabID = @s entityid
execute as @a[tag=isGamer] if score @s grabID = $Temp_Player grabID run tag @s add DropPlayerTempTag

#put ability on cooldown
scoreboard players operation @s cdGrab = @s cdGrabCurrent
tag @s add hasCooldown

execute as @a[tag=DropPlayerTempTag,limit=1] run function pudge:game/ability/grab/end
tag @a[tag=DropPlayerTempTag,limit=1] remove DropPlayerTempTag
