tellraw @s {"translate": "text.game.shop.purchase.heal","color": "green"}
scoreboard players add @s health 40
scoreboard players operation @s gold -= $HealCost shop
function pudge:game/gold/update_display
