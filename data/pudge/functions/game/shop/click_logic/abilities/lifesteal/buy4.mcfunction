tellraw @s {"text": "You bought Lifesteal level 4!","color": "green"}
scoreboard players set @s shopItem.Lifesteal 4
scoreboard players set @s lifestealAmount 3
scoreboard players operation @s gold -= $LifestealCost shop
function pudge:game/gold/update_display