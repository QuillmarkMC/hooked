#reset temp variables
function pudge:game/shop/reset_temp_var

#figure out which shop item was selected (double as clearing the item from inventory, including cursor)
execute store success score $TempBeacon shop run clear @s beacon{Beacon:1} 1
execute store success score $TempGrass shop run clear @s grass_block{Grass:1} 1
execute store success score $TempAxe shop run clear @s netherite_axe{Axe:1} 1
execute store success score $TempBackPage shop run clear @s barrier{BackPage:1} 1
execute store success score $TempState1 shop run clear @s book{Stats:1} 1
execute store success score $TempState2 shop run clear @s sculk{Abilities:1} 1
execute store success score $TempState3 shop run clear @s golden_apple{Consumes:1} 1
execute store success score $TempHeal shop run clear @s potion{HealConsumes:1} 1
execute store success score $TempHookCD shop run clear @s crossbow{HookCDStats:1} 1
execute store success score $TempHookDamage shop run clear @s crossbow{HookDamageStats:1} 1

#run logic based on what item was selected
execute if score $TempBackPage shop matches 1.. run scoreboard players set @s shopState 0
execute if score $TempState1 shop matches 1.. run scoreboard players set @s shopState 1
execute if score $TempState2 shop matches 1.. run scoreboard players set @s shopState 2
execute if score $TempState3 shop matches 1.. run scoreboard players set @s shopState 3
execute if score $TempBeacon shop matches 1.. run function pudge:game/shop/click_logic/abilities/beacon/click
execute if score $TempGrass shop matches 1.. run function pudge:game/shop/click_logic/abilities/grass/click
execute if score $TempAxe shop matches 1.. run function pudge:game/shop/click_logic/abilities/axe/click
execute if score $TempHeal shop matches 1.. run function pudge:game/shop/click_logic/consumes/heal/click
execute if score $TempHookCD shop matches 1.. run function pudge:game/shop/click_logic/stats/hook_cd/click
execute if score $TempHookDamage shop matches 1.. run function pudge:game/shop/click_logic/stats/hook_damage/click

#update ender chest inventory
function pudge:game/shop/inventory/update

tag @s remove shopInteractDetect