#debug message
execute if score $Debug var matches 3.. run say pudge:game/inventory/update

scoreboard players set $DelayInventory var 0
#item shop logic
execute if entity @s[tag=shopInteractDetect] run function pudge:game/shop/determine_click
#update ender chest inventory
function pudge:game/shop/inventory/update

##State 2
#execute if not dead
execute if score $State var matches 2 if entity @s[tag=!dead] unless score $DelayInventory var matches 1 run function pudge:game/inventory/game/alive_inv
#execute if dead
execute if score $State var matches 2 if entity @s[tag=dead] unless score $DelayInventory var matches 1 run function pudge:game/inventory/game/dead_inv

##State 1

##State 0

scoreboard players set $DelayInventory var 0
tag @s remove shopInteractDetect
advancement revoke @s only pudge:inv_change