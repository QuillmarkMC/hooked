#called every tick from pudge:game/tick by arrows that have bounces left
execute if score $Debug var matches 3.. run say pudge:game/ability/bounce/arrow_tick
# @s = arrow
scoreboard players set #Temp bounceCount 0

#execute store result score @s x.Motion run data get entity @s Motion[0] 1000
#execute store result score @s y.Motion run data get entity @s Motion[1] 1000
#execute store result score @s z.Motion run data get entity @s Motion[2] 1000
#execute at @s unless block ~-0.7 ~ ~ #pudge:ignore_bounce store result entity @s Motion[0] double 0.001 run scoreboard players operation @s x.Motion *= #-1 math
#execute at @s unless block ~0.7 ~ ~ #pudge:ignore_bounce store result entity @s Motion[0] double 0.001 run scoreboard players operation @s x.Motion *= #-1 math
#execute at @s unless block ~ ~ ~-0.7 #pudge:ignore_bounce store result entity @s Motion[2] double 0.001 run scoreboard players operation @s z.Motion *= #-1 math
#execute at @s unless block ~ ~ ~0.7 #pudge:ignore_bounce store result entity @s Motion[2] double 0.001 run scoreboard players operation @s z.Motion *= #-1 math
#execute at @s unless block ~ ~-0.7 ~ #pudge:ignore_bounce store result entity @s Motion[1] double 0.001 run scoreboard players operation @s y.Motion *= #-1 math
#execute at @s unless block ~ ~0.7 ~ #pudge:ignore_bounce store result entity @s Motion[1] double 0.001 run scoreboard players operation @s y.Motion *= #-1 math

execute at @s unless block ~0.5 ~ ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~-0.5 ~ ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~0.5 ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~-0.5 ~ #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~ ~0.5 #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1
execute at @s unless block ~ ~ ~-0.5 #pudge:ignore_bounce run scoreboard players set #Temp bounceCount 1

execute store result storage pudge:arrow temp_id int 1 run scoreboard players get @s entityid
execute if score #Temp bounceCount matches 1 run function pudge:game/ability/bounce/yes_bounce with storage pudge:arrow
execute if score #Temp bounceCount matches 0 run function pudge:game/ability/bounce/no_bounce with storage pudge:arrow

#execute if score #Temp bounceCount matches 1.. run scoreboard players remove @s bounceCount 1
#execute if score #Temp bounceCount matches 1.. at @s run playsound entity.arrow.hit player @a ~ ~ ~
#execute if score #Temp bounceCount matches 1.. if score $Debug var matches 2.. run say pudge:game/ability/bounce/arrow_tick SUCCESS

execute at @s if predicate pudge:water/in_water run scoreboard players set @s bounceCount 0

#data modify entity @s inGround set value 0b