scoreboard players add $HookDamage.State lobbysigns 1
execute unless score $HookDamage.State lobbysigns matches 0..4 run scoreboard players set $HookDamage.State lobbysigns 0
execute if score $HookDamage.State lobbysigns matches 0 run scoreboard players set $HookDamageCost shop 40
execute if score $HookDamage.State lobbysigns matches 1 run scoreboard players set $HookDamageCost shop 35
execute if score $HookDamage.State lobbysigns matches 2 run scoreboard players set $HookDamageCost shop 25
execute if score $HookDamage.State lobbysigns matches 3 run scoreboard players set $HookDamageCost shop 65
execute if score $HookDamage.State lobbysigns matches 4 run scoreboard players set $HookDamageCost shop 55
