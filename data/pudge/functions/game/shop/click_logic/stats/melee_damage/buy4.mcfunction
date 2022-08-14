tellraw @s {"text": "You bought the Melee Damage Upgrade level 4!","color": "green"}
scoreboard players set @s shopItem.Melee.Damage 4
scoreboard players operation @s gold -= $MeleeDamageCost shop
function pudge:game/gold/update_display
scoreboard players add @s meleeDamage 4