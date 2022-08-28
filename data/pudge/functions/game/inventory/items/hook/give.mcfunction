#execute if entity @s[scores={cdHook=..0}] run item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Hookshot","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Launches an arrow that attaches","color":"gray","italic":true}','{"text":"to a player, pulling them towards you.","color":"gray","italic":true}']},Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],HideFlags:127,Unbreakable:true,Hook:1,Cooldown:0}
#execute if entity @s[scores={cdHook=1..}] run item replace entity @s hotbar.0 with shears{display:{Name:'{"text":"Hookshot","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Launches an arrow that attaches","color":"gray","italic":true}','{"text":"to a player, pulling them towards you.","color":"gray","italic":true}']},HideFlags:127,Unbreakable:false,Cooldown:1,CustomModelData:99}
execute if entity @s[scores={cdHook=..0}] run item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Hookshot","color":"gray","bold":true,"italic":false}',Lore:[]},Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],HideFlags:127,Unbreakable:true,Hook:1,Cooldown:0}
execute if entity @s[scores={cdHook=1..}] run item replace entity @s hotbar.0 with shears{display:{Name:'{"text":"Hookshot","color":"gray","bold":true,"italic":false}',Lore:[]},HideFlags:127,Unbreakable:false,Cooldown:1,CustomModelData:99}

#dynamic item lore
item modify entity @s hotbar.0 pudge:lore/hook_tooltip
scoreboard players operation $Num1 math = @s hookDamage
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.0 pudge:lore/damage
scoreboard players operation $Num1 math = @s cdHookCurrent
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.0 pudge:lore/cooldown
item modify entity @s hotbar.0 pudge:lore/bounce/bounce_count

execute if score @s cdHook matches 1.. run function pudge:game/inventory/items/hook/display