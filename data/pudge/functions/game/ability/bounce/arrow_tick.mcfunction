#called every tick from game/tick.mcfunction by arrows that have bounces left
# @s = arrow
scoreboard players remove @s bounceCount 1

execute store result score @s x.Motion run data get entity @s Motion[0] 1000
execute store result score @s y.Motion run data get entity @s Motion[1] 1000
execute store result score @s z.Motion run data get entity @s Motion[2] 1000
execute at @s unless block ~-.7 ~ ~ air store result entity @s Motion[0] double 0.001 run scoreboard players operation @s x.Motion *= #-1 math
execute at @s unless block ~.7 ~ ~ air store result entity @s Motion[0] double 0.001 run scoreboard players operation @s x.Motion *= #-1 math
execute at @s unless block ~ ~ ~-.7 air store result entity @s Motion[2] double 0.001 run scoreboard players operation @s z.Motion *= #-1 math
execute at @s unless block ~ ~ ~.7 air store result entity @s Motion[2] double 0.001 run scoreboard players operation @s z.Motion *= #-1 math
execute at @s unless block ~ ~-.7 ~ air store result entity @s Motion[1] double 0.001 run scoreboard players operation @s y.Motion *= #-1 math
execute at @s unless block ~ ~.7 ~ air store result entity @s Motion[1] double 0.001 run scoreboard players operation @s y.Motion *= #-1 math

data modify entity @s inGround set value 0b