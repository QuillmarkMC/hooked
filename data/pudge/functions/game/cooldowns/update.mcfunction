execute if score @s cdHook matches 1.. run scoreboard players remove @s cdHook 1
execute if score @s cdHook matches 0 run function pudge:game/cooldowns/hook/end_cd

execute if score @s cdCreeper matches 1.. run scoreboard players remove @s cdCreeper 1
execute if score @s cdCreeper matches 0 run function pudge:game/cooldowns/creeper/end_cd
