tellraw @s {"text": "You bought an Instant Heal!","color": "green"}
scoreboard players add @s health 40
scoreboard players operation @s gold -= $HealCost shop
function pudge:game/gold/update_display
