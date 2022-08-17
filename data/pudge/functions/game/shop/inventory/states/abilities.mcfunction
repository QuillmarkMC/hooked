#update the state of all items in the ender chest inventory for @s (player)
#execute unless slot is correct run function reset_slot (repeat for every item in shop)
execute unless data entity @s EnderItems[{Slot:0b,id:"minecraft:bedrock",tag:{CreeperAbility:1}}] run function pudge:game/shop/inventory/items/abilities/creeper
execute unless data entity @s EnderItems[{Slot:1b,id:"minecraft:bedrock",tag:{BounceAbility:1}}] run function pudge:game/shop/inventory/items/abilities/bounce
execute unless data entity @s EnderItems[{Slot:2b,id:"minecraft:bedrock",tag:{KnockbackAbility:1}}] run function pudge:game/shop/inventory/items/abilities/knockback
execute unless data entity @s EnderItems[{Slot:3b,id:"minecraft:bedrock",tag:{GrappleAbility:1}}] run function pudge:game/shop/inventory/items/abilities/grapple
execute unless data entity @s EnderItems[{Slot:4b,id:"minecraft:bedrock",tag:{LifestealAbility:1}}] run function pudge:game/shop/inventory/items/abilities/lifesteal
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
execute unless data entity @s EnderItems[{Slot:26b,id:"minecraft:bedrock",tag:{BackPage:1}}] run item replace entity @s enderchest.26 with bedrock{BackPage:1,Shop:1,display:{Name:'{"text":"Previous Page","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Go back to the previous page.","color":"gray","italic":false}']},HideFlags:127,CustomModelData:7}
