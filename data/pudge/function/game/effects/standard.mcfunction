#give infinite length potion effects instead of applying them every tick
effect give @s resistance infinite 4 true
effect give @s saturation infinite 255 true
execute if score @s clearTotemEffects matches 0.. run scoreboard players reset @s clearTotemEffects