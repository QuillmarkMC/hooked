tellraw @s {"text": "You bought Stick of Suffering level 5!","color": "green"}
scoreboard players set @s shopItem.Knockback 5
scoreboard players add @s knockbackLevel 1
scoreboard players operation @s gold -= $KnockbackCost shop
function pudge:game/gold/update_display