tellraw @s {"text": "You bought Throwable Creeper level 5!","color": "green"}
scoreboard players set @s shopItem.Creeper 5
scoreboard players operation @s gold -= $CreeperCost shop
function pudge:game/gold/update_display

