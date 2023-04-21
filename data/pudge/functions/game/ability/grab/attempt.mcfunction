# @s = grabbing player
# @a[tag=TempGrabbedTag] = grabbed player

scoreboard players set $AllowGrab grabID 1
tag @s add GrabbingPlayerTag
execute at @s as @a[distance=..4,sort=nearest,limit=1,tag=!GrabbingPlayerTag] run tag @s add TempGrabbedTag
execute if score @s grabID matches 1.. run scoreboard players set $AllowGrab grabID 0
execute if score @s launchID matches 1.. run scoreboard players set $AllowGrab grabID 0
execute if score @a[tag=TempGrabbedTag,limit=1] grabID matches 1.. run scoreboard players set $AllowGrab grabID 0
execute if score @a[tag=TempGrabbedTag,limit=1] launchID matches 1.. run scoreboard players set $AllowGrab grabID 0
execute if score @a[tag=TempGrabbedTag,limit=1] hookID matches 1.. run scoreboard players set $AllowGrab grabID 0

execute if score $AllowGrab grabID matches 1 as @a[tag=TempGrabbedTag,limit=1] run function pudge:game/ability/grab/success

tag @a[tag=TempGrabbedTag,limit=1] remove TempGrabbedTag
tag @s remove GrabbingPlayerTag

#tag @s add raycasting
#scoreboard players set $Hit raycast 0
#scoreboard players set $Distance raycast 0
#function pudge:game/ability/grab/raycast/cast
#tag @s remove raycasting