execute if score @s cdHook matches 1.. run scoreboard players remove @s cdHook 1
execute if score @s cdHook matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdHook 2
execute if score @s cdHook matches -99..0 run function pudge:game/cooldowns/hook/end_cd

execute if score @s cdCreeper matches 1.. run scoreboard players remove @s cdCreeper 1
execute if score @s cdCreeper matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdCreeper 2
execute if score @s cdCreeper matches -99..0 run function pudge:game/cooldowns/creeper/end_cd

execute if score @s cdBounce matches 1.. run scoreboard players remove @s cdBounce 1
execute if score @s cdBounce matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdBounce 2
execute if score @s cdBounce matches -99..0 run function pudge:game/cooldowns/bounce/end_cd

execute if score @s cdKnockback matches 1.. run scoreboard players remove @s cdKnockback 1
execute if score @s cdKnockback matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdKnockback 2
execute if score @s cdKnockback matches -99..0 run function pudge:game/cooldowns/knockback/end_cd

execute if score @s cdGrapple matches 1.. run scoreboard players remove @s cdGrapple 1
execute if score @s cdGrapple matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdGrapple 2
execute if score @s cdGrapple matches -99..0 run function pudge:game/cooldowns/grapple/end_cd

execute if score @s cdLifesteal matches 1.. run scoreboard players remove @s cdLifesteal 1
execute if score @s cdLifesteal matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdLifesteal 2
execute if score @s cdLifesteal matches -99..0 run function pudge:game/cooldowns/lifesteal/end_cd

execute if score @s cdTotem matches 1.. run scoreboard players remove @s cdTotem 1
execute if score @s cdTotem matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdTotem 2
execute if score @s cdTotem matches -99..0 run function pudge:game/cooldowns/totem/end_cd

execute if score @s cdGrab matches 1.. run scoreboard players remove @s cdGrab 1
execute if score @s cdGrab matches 1.. if score @s adrenalineTimer matches 1.. run scoreboard players remove @s cdGrab 2
execute if score @s cdGrab matches -99..0 run function pudge:game/cooldowns/grab/end_cd