#gold
scoreboard players operation @s gold = $StartingGold gold
function pudge:game/gold/update_display

#item levels
scoreboard players set @s shopItem.Creeper 0
scoreboard players set @s shopItem.Bounce 0
scoreboard players set @s shopItem.Hook.CD 0
scoreboard players set @s shopItem.Hook.Damage 0
scoreboard players set @s shopItem.Melee.Damage 0
scoreboard players set @s shopItem.Knockback 0
scoreboard players set @s shopItem.Grapple 0
scoreboard players set @s shopItem.Lifesteal 0
scoreboard players set @s shopItem.Totem 0
scoreboard players set @s shopItem.ExtraHealth 0

#upgrade count
scoreboard players set @s numUpgrades 0

#enderchest click
scoreboard players set @s enderClick 0

#state
scoreboard players set @s shopState 0

#clear ender chest inventory
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air