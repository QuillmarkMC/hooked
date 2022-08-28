#called when a totem chance succeeded, needs to force play the totem of undying animation

tag @s add hasTotem
advancement grant @s only pudge:inv_change

effect clear @s resistance
effect give @s instant_damage 1 10 true

scoreboard players set @s clearTotemEffects 1
effect give @s minecraft:resistance 999999 10 true
tag @s remove hasTotem
#advancement grant @s only pudge:inv_change