tellraw @s {"translate": "text.game.shop.purchase.extra_health.5","color": "green"}
scoreboard players set @s shopItem.ExtraHealth 5
scoreboard players add @s maxHealth 40
scoreboard players operation @s gold -= $ExtraHealthCost shop
function pudge:game/gold/update_display