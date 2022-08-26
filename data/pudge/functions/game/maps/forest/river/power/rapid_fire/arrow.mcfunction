scoreboard players set $proj_power rapidFireTimer 400
playsound minecraft:item.crossbow.shoot ambient @a ~ ~ ~
execute at @s run function pudge:game/maps/forest/river/power/rapid_fire/get_motion

execute anchored eyes positioned ^ ^ ^ run summon minecraft:arrow ~ ~ ~ {Tags:["tempArrowTag","hookArrow"]}
data modify entity @e[type=minecraft:arrow,tag=tempArrowTag,limit=1] Motion set from storage pudge:motion Motion
data modify entity @e[type=minecraft:arrow,tag=tempArrowTag,limit=1] Owner set from entity @s UUID
data modify entity @e[type=minecraft:arrow,tag=tempArrowTag,limit=1] crit set value 1b
execute if score @s bounceCount matches 1.. run scoreboard players operation @e[type=minecraft:arrow,tag=tempArrowTag,limit=1] bounceCount = @s bounceCount

tag @e[type=minecraft:arrow,tag=tempArrowTag] remove tempArrowTag