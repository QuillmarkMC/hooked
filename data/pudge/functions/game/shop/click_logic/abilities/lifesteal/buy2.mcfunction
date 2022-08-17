tellraw @s {"text": "You bought Lifesteal level 2!","color": "green"}
scoreboard players set @s shopItem.Lifesteal 2
scoreboard players set @s lifestealAmount 2
scoreboard players operation @s gold -= $LifestealCost shop
function pudge:game/gold/update_display