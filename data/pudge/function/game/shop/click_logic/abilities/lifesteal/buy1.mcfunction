tellraw @s {"text": "You bought Lifesteal level 1!","color": "green"}
scoreboard players set @s shopItem.Lifesteal 1
scoreboard players set @s lifestealAmount 10
scoreboard players set @s lifestealRegen 20
scoreboard players operation @s gold -= $LifestealCost shop
function pudge:game/gold/update_display

scoreboard players add @s numUpgrades 1
execute if score @s numUpgrades matches 1 run scoreboard players operation @s hotbar.2.ID = $ItemID shopItem.Lifesteal
execute if score @s numUpgrades matches 2 run scoreboard players operation @s hotbar.3.ID = $ItemID shopItem.Lifesteal
execute if score @s numUpgrades matches 3 run scoreboard players operation @s hotbar.4.ID = $ItemID shopItem.Lifesteal
execute if score @s numUpgrades matches 4 run scoreboard players operation @s hotbar.5.ID = $ItemID shopItem.Lifesteal
execute if score @s numUpgrades matches 5 run scoreboard players operation @s hotbar.6.ID = $ItemID shopItem.Lifesteal
execute if score @s numUpgrades matches 6 run scoreboard players operation @s hotbar.7.ID = $ItemID shopItem.Lifesteal
