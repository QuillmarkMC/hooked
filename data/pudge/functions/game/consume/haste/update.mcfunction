scoreboard players remove @s hasteTimer 1
effect give @s speed 999999 2 false
effect give @s dolphins_grace 999999 0 false
execute if score @s hasteTimer matches ..0 run function pudge:game/consume/haste/end