#INPUT: $max rng (number of possible outputs) (set before function call)
#OUTPUT: $out rng (value between 0 and $max)
#summon entity, get its UUID and parse as random number
summon marker 0 -75 0 {Tags:["markerRNG"]}
data modify storage pudge:rng Output set from entity @e[type=marker,tag=markerRNG,limit=1] UUID
kill @e[tag=markerRNG,limit=1]

execute store result score $UUID_0 rng run data get storage pudge:rng Output[0]
execute store result score $UUID_1 rng run data get storage pudge:rng Output[1]
execute store result score $UUID_2 rng run data get storage pudge:rng Output[2]
execute store result score $UUID_3 rng run data get storage pudge:rng Output[3]

scoreboard players operation $UUID_0 rng /= #10 math
scoreboard players operation $UUID_1 rng /= #10 math
scoreboard players operation $UUID_2 rng /= #10 math
scoreboard players operation $UUID_3 rng /= #10 math

scoreboard players set $out rng 0
scoreboard players operation $out rng += $UUID_0 rng
scoreboard players operation $out rng += $UUID_1 rng
scoreboard players operation $out rng += $UUID_2 rng
scoreboard players operation $out rng += $UUID_3 rng
scoreboard players operation $out rng /= #4 math
execute if score $out rng matches ..0 run scoreboard players operation $out rng *= #-1 math

scoreboard players operation $out rng /= #100000 math
scoreboard players operation $out rng %= $max rng