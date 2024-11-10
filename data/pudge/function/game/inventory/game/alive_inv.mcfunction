#debug message
execute if score $Debug var matches 3.. run say pudge:game/inventory/alive_inv
#goat horn sound switch detection
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:goat_horn"}] run function pudge:game/ability/goat/change_instrument

function pudge:game/inventory/default_clear
#head
item replace entity @s armor.head with air
#chest
execute unless score @s elytraTimer matches 1.. if entity @s[team=red] run item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_value"}],show_in_tooltip:false},dyed_color={rgb:16725044,show_in_tooltip:false}]
execute unless score @s elytraTimer matches 1.. if entity @s[team=blue] run item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_value"}],show_in_tooltip:false},dyed_color={rgb:3618047,show_in_tooltip:false}]
execute if score @s elytraTimer matches 1.. run item replace entity @s armor.chest with elytra[unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:0,operation:"add_value"}],show_in_tooltip:false},custom_name='{"translate":"text.game.inventory.elytra","color":"light_purple","bold":true,"italic":false}']
#legs
item replace entity @s armor.legs with air
#boots
item replace entity @s armor.feet with air
#hotbar 0
execute if entity @s[tag=hasHook] run function pudge:game/inventory/items/hook/give
execute if entity @s[tag=!hasHook] run item replace entity @s hotbar.0 with barrier[custom_name='{"translate":"text.game.inventory.unavailable.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.unavailable.lore","color":"gray","italic":false}'],custom_model_data=1]
#hotbar 1
execute if entity @s[tag=hasMelee] run function pudge:game/inventory/items/melee/give
execute if entity @s[tag=!hasMelee] run item replace entity @s hotbar.1 with barrier[custom_name='{"translate":"text.game.inventory.unavailable.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.unavailable.lore","color":"gray","italic":false}'],custom_model_data=1]
#hotbar 2
execute if score $MaxInventoryUpgrades var matches 1.. if score @s hotbar.2.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar2_general
execute if score $MaxInventoryUpgrades var matches 1.. if score @s hotbar.2.ID matches ..0 run item replace entity @s hotbar.2 with barrier[custom_name='{"translate":"text.game.inventory.empty.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.empty.lore","color":"gray","italic":true}'],custom_model_data=1]
execute unless score $MaxInventoryUpgrades var matches 1.. run item replace entity @s hotbar.2 with air
#hotbar 3
execute if score $MaxInventoryUpgrades var matches 2.. if score @s hotbar.3.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar3_general
execute if score $MaxInventoryUpgrades var matches 2.. if score @s hotbar.3.ID matches ..0 run item replace entity @s hotbar.3 with barrier[custom_name='{"translate":"text.game.inventory.empty.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.empty.lore","color":"gray","italic":true}'],custom_model_data=1]
execute unless score $MaxInventoryUpgrades var matches 2.. run item replace entity @s hotbar.3 with air
#hotbar 4
execute if score $MaxInventoryUpgrades var matches 3.. if score @s hotbar.4.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar4_general
execute if score $MaxInventoryUpgrades var matches 3.. if score @s hotbar.4.ID matches ..0 run item replace entity @s hotbar.4 with barrier[custom_name='{"translate":"text.game.inventory.empty.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.empty.lore","color":"gray","italic":true}'],custom_model_data=1]
execute unless score $MaxInventoryUpgrades var matches 3.. run item replace entity @s hotbar.4 with air
#hotbar 5
execute if score $MaxInventoryUpgrades var matches 4.. if score @s hotbar.5.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar5_general
execute if score $MaxInventoryUpgrades var matches 4.. if score @s hotbar.5.ID matches ..0 run item replace entity @s hotbar.5 with barrier[custom_name='{"translate":"text.game.inventory.empty.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.empty.lore","color":"gray","italic":true}'],custom_model_data=1]
execute unless score $MaxInventoryUpgrades var matches 4.. run item replace entity @s hotbar.5 with air
#hotbar 6
execute if score $MaxInventoryUpgrades var matches 5.. if score @s hotbar.6.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar6_general
execute if score $MaxInventoryUpgrades var matches 5.. if score @s hotbar.6.ID matches ..0 run item replace entity @s hotbar.6 with barrier[custom_name='{"translate":"text.game.inventory.empty.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.empty.lore","color":"gray","italic":true}'],custom_model_data=1]
execute unless score $MaxInventoryUpgrades var matches 5.. run item replace entity @s hotbar.6 with air
#hotbar 7
execute if score $MaxInventoryUpgrades var matches 6.. if score @s hotbar.7.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar7_general
execute if score $MaxInventoryUpgrades var matches 6.. if score @s hotbar.7.ID matches ..0 run item replace entity @s hotbar.7 with barrier[custom_name='{"translate":"text.game.inventory.empty.name","color":"dark_red","bold":true,"italic":false}',lore=['{"translate":"text.game.inventory.empty.lore","color":"gray","italic":true}'],custom_model_data=1]
execute unless score $MaxInventoryUpgrades var matches 6.. run item replace entity @s hotbar.7 with air
#hotbar 8
item replace entity @s hotbar.8 with air
#off hand
execute unless score @s elytraTimer matches 1.. unless entity @s[tag=hasTotem] run item replace entity @s weapon.offhand with air
execute if score @s elytraTimer matches 1.. unless entity @s[tag=hasTotem] run item replace entity @s weapon.offhand with firework_rocket 64
execute if entity @s[tag=hasTotem] run item replace entity @s weapon.offhand with totem_of_undying