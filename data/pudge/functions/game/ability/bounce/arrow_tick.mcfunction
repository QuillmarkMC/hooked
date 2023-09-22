#called every tick from game/tick.mcfunction by arrows that have bounces left
# @s = arrow
scoreboard players set #Temp bounceCount 0

execute store result score @s x.Motion run data get entity @s Motion[0] 1000
execute store result score @s y.Motion run data get entity @s Motion[1] 1000
execute store result score @s z.Motion run data get entity @s Motion[2] 1000
execute at @s unless block ~-.7 ~ ~ #pudge:ignore_bounce store result entity @s Motion[0] double 0.001 run scoreboard players operation @s x.Motion *= #-1 math
execute at @s unless block ~.7 ~ ~ #pudge:ignore_bounce store result entity @s Motion[0] double 0.001 run scoreboard players operation @s x.Motion *= #-1 math
execute at @s unless block ~ ~ ~-.7 #pudge:ignore_bounce store result entity @s Motion[2] double 0.001 run scoreboard players operation @s z.Motion *= #-1 math
execute at @s unless block ~ ~ ~.7 #pudge:ignore_bounce store result entity @s Motion[2] double 0.001 run scoreboard players operation @s z.Motion *= #-1 math
execute at @s unless block ~ ~-.7 ~ #pudge:ignore_bounce store result entity @s Motion[1] double 0.001 run scoreboard players operation @s y.Motion *= #-1 math
execute at @s unless block ~ ~.7 ~ #pudge:ignore_bounce store result entity @s Motion[1] double 0.001 run scoreboard players operation @s y.Motion *= #-1 math

execute at @s unless block ~-.7 ~ ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~.7 ~ ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~ ~-.7 #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~ ~.7 #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~-.7 ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~.7 ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1

execute if score #Temp bounceCount matches 1.. run scoreboard players remove @s bounceCount 1
execute if score #Temp bounceCount matches 1.. at @s run playsound entity.arrow.hit player @a ~ ~ ~

execute at @s if predicate pudge:water/in_water run scoreboard players set @s bounceCount 0

data modify entity @s inGround set value 0b