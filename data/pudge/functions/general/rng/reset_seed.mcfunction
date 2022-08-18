scoreboard players set #-1 rng -1
scoreboard players set $max rng 2
summon area_effect_cloud ~ ~ ~ {Tags:["FTUUID"]}
execute store result score $rand rng run data get entity @e[tag=FTUUID,limit=1] UUID[0]
execute store result score $tempSeed rng run data get entity @e[tag=FTUUID,limit=1] UUID[1]
scoreboard players operation $rand rng += $tempSeed rng
execute store result score $tempSeed rng run data get entity @e[tag=FTUUID,limit=1] UUID[2]
scoreboard players operation $rand rng += $tempSeed rng
execute store result score $tempSeed rng run data get entity @e[tag=FTUUID,limit=1] UUID[3]
scoreboard players operation $rand rng += $tempSeed rng
scoreboard players reset $tempSeed rng
kill @e[tag=FTUUID]
execute if score $rand rng matches 0 run function pudge:general/rng/reset_seed