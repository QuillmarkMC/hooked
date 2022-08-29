tellraw @s {"text": "You upgraded Max Health to level 2!","color": "green"}
scoreboard players set @s shopItem.ExtraHealth 2
scoreboard players add @s maxHealth 40
scoreboard players operation @s gold -= $ExtraHealthCost shop
function pudge:game/gold/update_display