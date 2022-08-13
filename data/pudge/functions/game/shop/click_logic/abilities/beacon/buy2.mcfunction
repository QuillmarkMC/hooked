tellraw @s {"text": "You bought Beacon level 2!","color": "green"}
scoreboard players set @s shopItem.Beacon 2
scoreboard players operation @s gold -= $BeaconCost shop
function pudge:game/gold/update_display