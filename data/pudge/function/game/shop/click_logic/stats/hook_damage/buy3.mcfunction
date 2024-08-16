tellraw @s {"translate": "text.game.shop.purchase.hook_damage.3","color": "green"}
scoreboard players set @s shopItem.Hook.Damage 3
scoreboard players operation @s gold -= $HookDamageCost shop
function pudge:game/gold/update_display
scoreboard players add @s hookDamage 10