scoreboard players add $Knockback.State lobbysigns 1
execute unless score $Knockback.State lobbysigns matches 0..4 run scoreboard players set $Knockback.State lobbysigns 0
execute if score $Knockback.State lobbysigns matches 0 run scoreboard players set $KnockbackCost shop 35
execute if score $Knockback.State lobbysigns matches 1 run scoreboard players set $KnockbackCost shop 30
execute if score $Knockback.State lobbysigns matches 2 run scoreboard players set $KnockbackCost shop 20
execute if score $Knockback.State lobbysigns matches 3 run scoreboard players set $KnockbackCost shop 50
execute if score $Knockback.State lobbysigns matches 4 run scoreboard players set $KnockbackCost shop 40
