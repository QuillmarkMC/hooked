execute if score @s cdHook matches 1.. run scoreboard players remove @s cdHook 1
execute if score @s cdHook matches 0 run function pudge:game/cooldowns/hook/end_cd

execute if score @s cdCreeper matches 1.. run scoreboard players remove @s cdCreeper 1
execute if score @s cdCreeper matches 0 run function pudge:game/cooldowns/creeper/end_cd

execute if score @s cdBounce matches 1.. run scoreboard players remove @s cdBounce 1
execute if score @s cdBounce matches 0 run function pudge:game/cooldowns/bounce/end_cd

execute if score @s cdKnockback matches 1.. run scoreboard players remove @s cdKnockback 1
execute if score @s cdKnockback matches 0 run function pudge:game/cooldowns/knockback/end_cd