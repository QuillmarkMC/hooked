scoreboard players operation $my_cooldown durability = @s cdHook
scoreboard players operation $max_cooldown durability = @s cdHookCurrent
scoreboard players operation $max_durability durability = $crossbow_max durability
function pudge:game/inventory/items/calculate_damage
execute if score @s cdHook matches 0.. run item modify entity @s hotbar.0 pudge:damage_crossbow