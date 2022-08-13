execute at @s run tp @s ~ ~0.05 ~ ~2 ~
execute at @s if entity @e[type=marker,tag=forestHealingFountainTop,limit=1,distance=..0] run tp @s @e[type=marker,tag=forestHealingFountainBase,limit=1]
particle dust 1 0.133 0.133 2 ^ ^ ^8 0 0 0 0 10 force
particle dust 1 0.133 0.133 2 ^ ^ ^-8 0 0 0 0 10 force