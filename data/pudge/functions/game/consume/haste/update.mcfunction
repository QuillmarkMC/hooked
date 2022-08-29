scoreboard players remove @s hasteTimer 1
effect give @s speed 20 2 false
effect give @s dolphins_grace 20 0 false
execute if score @s hasteTimer matches ..0 run function pudge:game/consume/haste/end