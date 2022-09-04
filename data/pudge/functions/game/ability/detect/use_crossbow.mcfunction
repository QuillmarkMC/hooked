#debug message
execute if score $Debug var matches 1.. run say game/ability/detect/use_crossbow.mcfunction

tag @s add tempArrowOwnerTag

scoreboard players set $Temp crossbow 0
scoreboard players operation $Temp arrowOwner = @s entityid
execute if data entity @s SelectedItem.tag.Hook run scoreboard players operation @s cdHook = @s cdHookCurrent
execute if data entity @s SelectedItem.tag.Hook run scoreboard players set $Temp crossbow 1
execute if data entity @s SelectedItem.tag.Grapple run scoreboard players operation @s cdGrapple = @s cdGrappleCurrent
execute if data entity @s SelectedItem.tag.Grapple run scoreboard players set $Temp crossbow 2
#add logic to replace normal arrow with custom arrow, with custom nbt, original motion, and no owner
execute at @s as @e[type=arrow,tag=!arrowInit,sort=nearest,limit=1] run function pudge:game/ability/detect/summon_new_arrow

tag @s add hasCooldown
tag @s remove tempArrowOwnerTag
scoreboard players set @s crossbow 0

advancement grant @s only pudge:inv_change