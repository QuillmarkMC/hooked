#debug message
execute if score $Debug var matches 1.. run say game/inventory/alive_inv.mcfunction

function pudge:game/inventory/default_clear
#head
#chest
#legs
#boots
#hotbar 0
execute if entity @s[tag=hasHook] run function pudge:game/inventory/items/hook/give
#hotbar 1
#execute if entity @s[tag=hasBeacon] run function pudge:game/inventory/items/beacon/give
#execute unless entity @s[tag=hasBeacon] run item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
execute if score @s hotbar.1.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar1_general
execute if score @s hotbar.1.ID matches ..0 run item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 2
#execute if entity @s[tag=hasGrass] run function pudge:game/inventory/items/grass/give
#execute unless entity @s[tag=hasGrass] run item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
execute if score @s hotbar.2.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar2_general
execute if score @s hotbar.2.ID matches ..0 run item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 3
#execute if entity @s[tag=hasAxe] run function pudge:game/inventory/items/axe/give
#execute unless entity @s[tag=hasAxe] run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
execute if score @s hotbar.3.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar3_general
execute if score @s hotbar.3.ID matches ..0 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 4
#hotbar 5
#hotbar 6
#hotbar 7
#hotbar 8
#off hand