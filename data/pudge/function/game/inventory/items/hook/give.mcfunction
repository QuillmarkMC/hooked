execute if entity @s[scores={cdHook=..0}] run item replace entity @s hotbar.0 with crossbow[custom_name={"translate":"text.game.inventory.hook.name","color":"gray","bold":true,"italic":false},lore=[{"text":" "}],unbreakable={},custom_data={Hook:1,Cooldown:0},tooltip_display={hidden_components:["unbreakable","charged_projectiles"]},charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if entity @s[scores={cdHook=1..}] run item replace entity @s hotbar.0 with shears[custom_name={"translate":"text.game.inventory.hook.name","color":"gray","bold":true,"italic":false},lore=[{"text":" "}],item_model="crossbow",custom_data={Cooldown:1}]

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