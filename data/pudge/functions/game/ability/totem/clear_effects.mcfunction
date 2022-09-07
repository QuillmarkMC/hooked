effect clear @s fire_resistance
effect clear @s regeneration
effect clear @s absorption
effect give @s instant_health 1 10 true
execute if score @s killstreak matches 3.. run effect give @s glowing 999999 0 true
scoreboard players remove @s clearTotemEffects 1