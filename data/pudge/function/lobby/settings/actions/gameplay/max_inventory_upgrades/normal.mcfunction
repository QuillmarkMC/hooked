scoreboard players add $MaxInventoryUpgrades.State lobbysigns 1
execute unless score $MaxInventoryUpgrades.State lobbysigns matches 0..4 run scoreboard players set $MaxInventoryUpgrades.State lobbysigns 0
execute if score $MaxInventoryUpgrades.State lobbysigns matches 0 run scoreboard players set $MaxInventoryUpgrades var 3
execute if score $MaxInventoryUpgrades.State lobbysigns matches 1 run scoreboard players set $MaxInventoryUpgrades var 2
execute if score $MaxInventoryUpgrades.State lobbysigns matches 2 run scoreboard players set $MaxInventoryUpgrades var 1
execute if score $MaxInventoryUpgrades.State lobbysigns matches 3 run scoreboard players set $MaxInventoryUpgrades var 0
execute if score $MaxInventoryUpgrades.State lobbysigns matches 4 run scoreboard players set $MaxInventoryUpgrades var 5
