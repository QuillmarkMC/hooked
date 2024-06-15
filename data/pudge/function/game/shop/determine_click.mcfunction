#reset temp variables
function pudge:game/shop/reset_temp_var

#figure out which shop item was selected (double as clearing the item from inventory, including cursor)
execute store success score $TempCreeper shop run clear @s bedrock[minecraft:custom_data~{CreeperAbility:1b}] 1
execute store success score $TempBounce shop run clear @s bedrock[minecraft:custom_data~{BounceAbility:1b}] 1
execute store success score $TempBackPage shop run clear @s bedrock[minecraft:custom_data~{BackPage:1b}] 1
execute store success score $TempState1 shop run clear @s bedrock[minecraft:custom_data~{Stats:1b}] 1
execute store success score $TempState2 shop run clear @s bedrock[minecraft:custom_data~{Abilities:1b}] 1
execute store success score $TempState3 shop run clear @s bedrock[minecraft:custom_data~{Consumes:1b}] 1
execute store success score $TempHeal shop run clear @s potion[minecraft:custom_data~{HealConsumes:1b}] 1
execute store success score $TempHookCD shop run clear @s bedrock[minecraft:custom_data~{HookCDStats:1b}] 1
execute store success score $TempHookDamage shop run clear @s bedrock[minecraft:custom_data~{HookDamageStats:1b}] 1
execute store success score $TempMeleeDamage shop run clear @s bedrock[minecraft:custom_data~{MeleeDamageStats:1b}] 1
execute store success score $TempKnockback shop run clear @s bedrock[minecraft:custom_data~{KnockbackAbility:1b}] 1
execute store success score $TempGrapple shop run clear @s bedrock[minecraft:custom_data~{GrappleAbility:1b}] 1
execute store success score $TempLifesteal shop run clear @s bedrock[minecraft:custom_data~{LifestealAbility:1b}] 1
execute store success score $TempTotem shop run clear @s bedrock[minecraft:custom_data~{TotemAbility:1b}] 1
execute store success score $TempHaste shop run clear @s potion[minecraft:custom_data~{HasteConsumes:1b}] 1
execute store success score $TempRangedAP shop run clear @s potion[minecraft:custom_data~{RangedAPConsumes:1b}] 1
execute store success score $TempExtraHealth shop run clear @s bedrock[minecraft:custom_data~{ExtraHealthStats:1b}] 1
execute store success score $TempGoat shop run clear @s bedrock[minecraft:custom_data~{GoatAbility:1b}] 1
execute store success score $TempRetract shop run clear @s bedrock[minecraft:custom_data~{RetractAbility:1b}] 1
execute store success score $TempUnavailable shop run clear @s bedrock[minecraft:custom_data~{UnavailableItem:1b}] 1
execute store success score $TempGrab shop run clear @s bedrock[minecraft:custom_data~{GrabAbility:1b}] 1

#run logic based on what item was selected
execute if score $TempBackPage shop matches 1.. run scoreboard players set @s shopState 0
execute if score $TempState1 shop matches 1.. run scoreboard players set @s shopState 1
execute if score $TempState2 shop matches 1.. run scoreboard players set @s shopState 2
execute if score $TempState3 shop matches 1.. run scoreboard players set @s shopState 3
execute if score $TempCreeper shop matches 1.. run function pudge:game/shop/click_logic/abilities/creeper/click
execute if score $TempBounce shop matches 1.. run function pudge:game/shop/click_logic/stats/bounce/click
execute if score $TempHeal shop matches 1.. run function pudge:game/shop/click_logic/consumes/heal/click
execute if score $TempHookCD shop matches 1.. run function pudge:game/shop/click_logic/stats/hook_cd/click
execute if score $TempHookDamage shop matches 1.. run function pudge:game/shop/click_logic/stats/hook_damage/click
execute if score $TempMeleeDamage shop matches 1.. run function pudge:game/shop/click_logic/stats/melee_damage/click
execute if score $TempKnockback shop matches 1.. run function pudge:game/shop/click_logic/abilities/knockback/click
execute if score $TempGrapple shop matches 1.. run function pudge:game/shop/click_logic/abilities/grapple/click
execute if score $TempLifesteal shop matches 1.. run function pudge:game/shop/click_logic/abilities/lifesteal/click
execute if score $TempTotem shop matches 1.. run function pudge:game/shop/click_logic/abilities/totem/click
execute if score $TempHaste shop matches 1.. run function pudge:game/shop/click_logic/consumes/haste/click
execute if score $TempRangedAP shop matches 1.. run function pudge:game/shop/click_logic/consumes/ranged_ap/click
execute if score $TempExtraHealth shop matches 1.. run function pudge:game/shop/click_logic/stats/extra_health/click
execute if score $TempGoat shop matches 1.. run function pudge:game/shop/click_logic/abilities/goat/click
execute if score $TempRetract shop matches 1.. run function pudge:game/shop/click_logic/abilities/retract/click
execute if score $TempGrab shop matches 1.. run function pudge:game/shop/click_logic/abilities/grab/click
#execute if score $TempUnavailable shop matches 1.. run function 

#update ender chest inventory
function pudge:game/shop/inventory/update

tag @s remove shopInteractDetect