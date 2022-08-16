#debug message
execute if score $Debug var matches 1.. run say game/inventory/alive_inv.mcfunction

function pudge:game/inventory/default_clear
#head
item replace entity @s armor.head with air
#chest
execute if entity @s[team=red] run item replace entity @s armor.chest with leather_chestplate{Unbreakable:true,display:{color: 16725044},AttributeModifiers:[]}
execute if entity @s[team=blue] run item replace entity @s armor.chest with leather_chestplate{Unbreakable:true,display:{color: 3618047},AttributeModifiers:[]}
#legs
item replace entity @s armor.legs with air
#boots
item replace entity @s armor.feet with air
#hotbar 0
execute if entity @s[tag=hasHook] run function pudge:game/inventory/items/hook/give
execute if entity @s[tag=!hasHook] run item replace entity @s hotbar.0 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 1
execute if entity @s[tag=hasMelee] run function pudge:game/inventory/items/melee/give
execute if entity @s[tag=!hasMelee] run item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 2
execute if score @s hotbar.2.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar2_general
execute if score @s hotbar.2.ID matches ..0 run item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 3
execute if score @s hotbar.3.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar3_general
execute if score @s hotbar.3.ID matches ..0 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 4
execute if score @s hotbar.4.ID matches 1.. run function pudge:game/inventory/game/slot_check/hotbar4_general
execute if score @s hotbar.4.ID matches ..0 run item replace entity @s hotbar.4 with barrier{display:{Name:'{"text":"Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"-","color":"dark_purple","italic":false}']}}
#hotbar 5
item replace entity @s hotbar.5 with air
#hotbar 6
item replace entity @s hotbar.6 with air
#hotbar 7
item replace entity @s hotbar.7 with air
#hotbar 8
item replace entity @s hotbar.8 with air
#off hand
item replace entity @s weapon.offhand with air