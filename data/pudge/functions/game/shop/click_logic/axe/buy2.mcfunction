tellraw @s {"text": "You bought Axe level 2!","color": "green"}
scoreboard players set @s shopItem.Axe 2
scoreboard players operation @s gold -= $AxeCost shop
function pudge:game/gold/update_display