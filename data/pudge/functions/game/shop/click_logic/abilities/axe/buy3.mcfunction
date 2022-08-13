tellraw @s {"text": "You bought Axe level 3!","color": "green"}
scoreboard players set @s shopItem.Axe 3
scoreboard players operation @s gold -= $AxeCost shop
function pudge:game/gold/update_display