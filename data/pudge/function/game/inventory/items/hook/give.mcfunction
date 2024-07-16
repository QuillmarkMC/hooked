execute if entity @s[scores={cdHook=..0}] run item replace entity @s hotbar.0 with crossbow[custom_name='{"translate":"text.game.inventory.hook.name","color":"gray","bold":true,"italic":false}',lore=['{"text":" "}'],unbreakable={show_in_tooltip:false},custom_data={Hook:1,Cooldown:0},hide_additional_tooltip={},charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if entity @s[scores={cdHook=1..}] run item replace entity @s hotbar.0 with shears[custom_name='{"translate":"text.game.inventory.hook.name","color":"gray","bold":true,"italic":false}',lore=['{"text":" "}'],custom_model_data=99,custom_data={Cooldown:1},hide_additional_tooltip={}]

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