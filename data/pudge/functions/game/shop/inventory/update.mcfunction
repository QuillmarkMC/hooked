execute if score @s shopState matches 0 run function pudge:game/shop/inventory/states/main
execute if score @s shopState matches 1 run function pudge:game/shop/inventory/states/stats
execute if score @s shopState matches 2 run function pudge:game/shop/inventory/states/abilities
execute if score @s shopState matches 3 run function pudge:game/shop/inventory/states/consumes

scoreboard players set @s dropBedrock 0
scoreboard players set @s dropPotion 0