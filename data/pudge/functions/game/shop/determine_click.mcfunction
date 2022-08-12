#reset temp variables
function pudge:game/shop/reset_temp_var

#figure out which shop item was selected (double as clearing the item from inventory, including cursor)
execute store success score $TempBeacon shop run clear @s beacon{Beacon:1} 1
execute store success score $TempGrass shop run clear @s grass_block{Grass:1} 1
execute store success score $TempAxe shop run clear @s netherite_axe{Axe:1} 1

execute if score $TempBeacon shop matches 1.. run function pudge:game/shop/click_logic/beacon/click
execute if score $TempGrass shop matches 1.. run function pudge:game/shop/click_logic/grass/click
execute if score $TempAxe shop matches 1.. run function pudge:game/shop/click_logic/axe/click

#update ender chest inventory
function pudge:game/shop/inventory/update

tag @s remove shopInteractDetect