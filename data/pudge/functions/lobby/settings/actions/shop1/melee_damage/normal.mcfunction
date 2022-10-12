scoreboard players add $MeleeDamage.State lobbysigns 1
execute unless score $MeleeDamage.State lobbysigns matches 0..4 run scoreboard players set $MeleeDamage.State lobbysigns 0
execute if score $MeleeDamage.State lobbysigns matches 0 run scoreboard players set $MeleeDamageCost shop 45
execute if score $MeleeDamage.State lobbysigns matches 1 run scoreboard players set $MeleeDamageCost shop 40
execute if score $MeleeDamage.State lobbysigns matches 2 run scoreboard players set $MeleeDamageCost shop 25
execute if score $MeleeDamage.State lobbysigns matches 3 run scoreboard players set $MeleeDamageCost shop 65
execute if score $MeleeDamage.State lobbysigns matches 4 run scoreboard players set $MeleeDamageCost shop 50
