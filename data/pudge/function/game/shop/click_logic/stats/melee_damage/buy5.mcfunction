tellraw @s {"translate": "text.game.shop.purchase.melee_damage.5","color": "green"}
scoreboard players set @s shopItem.Melee.Damage 5
scoreboard players operation @s gold -= $MeleeDamageCost shop
function pudge:game/gold/update_display
scoreboard players add @s meleeDamage 6