# @s is the arrow that hit the player
#debug message
execute if score $Debug var matches 1.. run say entity_hit_matching/on_hurt.mcfunction

#check nbt of arrow, figure out what kind of arrow (hook, grapple, explosion)
execute if entity @s[tag=hookArrow] run scoreboard players set $Temp var 1

#determine attacker based on arrow owner scoreboard
scoreboard players operation $Temp arrowOwner = @s arrowOwner
execute as @a[tag=isGamer] if score @s entityid = $Temp arrowOwner run tag @s add tempAttackerTag