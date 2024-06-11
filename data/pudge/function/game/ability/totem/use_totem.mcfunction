#delayed by a tick to make sure player has totem in inventory

effect clear @s resistance
effect give @s instant_damage 1 10 true

#particles to be seen from far away
execute at @s run particle totem_of_undying ~ ~1 ~ .125 .125 .125 .5 100 force

#put item on cooldown
scoreboard players operation @s cdTotem = @s cdTotemCurrent
tag @s add hasCooldown

scoreboard players set @s clearTotemEffects 2
tag @s remove hasTotem