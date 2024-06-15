scoreboard players reset @s rangedAPTimer
effect clear @s strength

#undo temporary damage increase
scoreboard players operation @s hookDamage -= @s rangedAPValue
scoreboard players reset @s rangedAPValue

tag @s add hasMelee
advancement grant @s only pudge:inv_change