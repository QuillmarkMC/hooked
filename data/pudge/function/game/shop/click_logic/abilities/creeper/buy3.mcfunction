tellraw @s {"text": "You bought Throwable Creeper level 3!","color": "green"}
scoreboard players set @s shopItem.Creeper 3
scoreboard players add @s creeperExplosion 1
scoreboard players operation @s gold -= $CreeperCost shop
function pudge:game/gold/update_display

