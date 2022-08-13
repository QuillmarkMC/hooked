tellraw @s {"text": "You bought Grass level 3!","color": "green"}
scoreboard players set @s shopItem.Grass 3
scoreboard players operation @s gold -= $GrassCost shop
function pudge:game/gold/update_display