execute if score $Debug var matches 2.. run say pudge:game/ability/bounce/yes_bounce
# @s = arrow
#called with pudge:arrow temp_id

#if arrow is about to hit a nearby block, invert motion from storage and copy it back onto arrow
$execute store result score @s x.Motion run data get storage pudge:arrow Arrows.$(temp_id)[0] 1000
$execute store result score @s y.Motion run data get storage pudge:arrow Arrows.$(temp_id)[1] 1000
$execute store result score @s z.Motion run data get storage pudge:arrow Arrows.$(temp_id)[2] 1000
execute at @s unless block ~0.5 ~ ~ #pudge:ignore_bounce run scoreboard players operation @s x.Motion *= #-1 math
execute at @s unless block ~-0.5 ~ ~ #pudge:ignore_bounce run scoreboard players operation @s x.Motion *= #-1 math
execute at @s unless block ~ ~0.5 ~ #pudge:ignore_bounce run scoreboard players operation @s y.Motion *= #-1 math
execute at @s unless block ~ ~-0.5 ~ #pudge:ignore_bounce run scoreboard players operation @s y.Motion *= #-1 math
execute at @s unless block ~ ~ ~0.5 #pudge:ignore_bounce run scoreboard players operation @s z.Motion *= #-1 math
execute at @s unless block ~ ~ ~-0.5 #pudge:ignore_bounce run scoreboard players operation @s z.Motion *= #-1 math

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s x.Motion
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s y.Motion
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s z.Motion

scoreboard players remove @s bounceCount 1
execute at @s run playsound entity.arrow.hit player @a ~ ~ ~
data modify entity @s inGround set value 0b