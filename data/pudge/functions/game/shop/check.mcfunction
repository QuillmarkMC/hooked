#called every tick in game/tick.mcfunction by all players in range of a shop
scoreboard players set $Temp shop 0

#reset chest state upon opening chest
execute if score @s enderClick matches 1.. run function pudge:game/shop/inventory/states/main
#if player drops item directly out of ender chest, reset its inventory
execute if score @s dropBedrock matches 1.. run function pudge:game/shop/inventory/update
execute if score @s dropPotion matches 1.. run function pudge:game/shop/inventory/update
execute store success score $Temp shop run clear @s #pudge:shop_items{Shop:1} 0
execute if score $Temp shop matches 1.. run tag @s add shopInteractDetect