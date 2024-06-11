scoreboard players remove @s rangedAPTimer 1
effect give @s strength infinite 0 false
execute if score @s rangedAPTimer matches ..0 run function pudge:game/consume/ranged_ap/end