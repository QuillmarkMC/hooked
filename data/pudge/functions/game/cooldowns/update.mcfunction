execute if score @s cdHook matches 1.. run scoreboard players remove @s cdHook 1
execute if score @s cdHook matches 0 run function pudge:game/cooldowns/hook/end_cd

#advancement grant @s only pudge:inv_change