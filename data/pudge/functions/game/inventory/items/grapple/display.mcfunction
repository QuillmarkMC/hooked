scoreboard players operation $my_cooldown durability = @s cdHook
scoreboard players operation $max_cooldown durability = @s cdHookCurrent
scoreboard players operation $max_durability durability = $crossbow_max durability
function pudge:game/inventory/items/calculate_damage
#execute if score @s cdCreeper matches 0.. run item modify entity @s hotbar.1 pudge:damage_shears
execute if score @s cdGrapple matches 0.. if score @s hotbar.2.ID = $ItemID shopItem.Grapple run item modify entity @s hotbar.2 pudge:damage_crossbow
execute if score @s cdGrapple matches 0.. if score @s hotbar.3.ID = $ItemID shopItem.Grapple run item modify entity @s hotbar.3 pudge:damage_crossbow
execute if score @s cdGrapple matches 0.. if score @s hotbar.4.ID = $ItemID shopItem.Grapple run item modify entity @s hotbar.4 pudge:damage_crossbow
execute if score @s cdGrapple matches 0.. if score @s hotbar.5.ID = $ItemID shopItem.Grapple run item modify entity @s hotbar.5 pudge:damage_crossbow
execute if score @s cdGrapple matches 0.. if score @s hotbar.6.ID = $ItemID shopItem.Grapple run item modify entity @s hotbar.6 pudge:damage_crossbow
execute if score @s cdGrapple matches 0.. if score @s hotbar.7.ID = $ItemID shopItem.Grapple run item modify entity @s hotbar.7 pudge:damage_crossbow