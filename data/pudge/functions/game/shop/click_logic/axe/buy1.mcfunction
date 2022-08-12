tellraw @s {"text": "You bought Axe level 1!","color": "green"}
scoreboard players set @s shopItem.Axe 1
scoreboard players operation @s gold -= $AxeCost shop
#tag @s add hasAxe
#place item in next available slot
scoreboard players add @s numUpgrades 1
execute if score @s numUpgrades matches 1 run scoreboard players operation @s hotbar.1.ID = $ItemID shopItem.Axe
execute if score @s numUpgrades matches 2 run scoreboard players operation @s hotbar.2.ID = $ItemID shopItem.Axe
execute if score @s numUpgrades matches 3 run scoreboard players operation @s hotbar.3.ID = $ItemID shopItem.Axe