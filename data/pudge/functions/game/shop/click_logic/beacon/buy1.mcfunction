tellraw @s {"text": "You bought Beacon level 1!","color": "green"}
scoreboard players set @s shopItem.Beacon 1
scoreboard players operation @s gold -= $BeaconCost shop
#tag @s add hasBeacon
scoreboard players add @s numUpgrades 1
execute if score @s numUpgrades matches 1 run scoreboard players operation @s hotbar.1.ID = $ItemID shopItem.Beacon
execute if score @s numUpgrades matches 2 run scoreboard players operation @s hotbar.2.ID = $ItemID shopItem.Beacon
execute if score @s numUpgrades matches 3 run scoreboard players operation @s hotbar.3.ID = $ItemID shopItem.Beacon