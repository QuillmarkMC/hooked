tellraw @s {"text": "You bought an Instant Heal!","color": "green"}
scoreboard players operation @s health += #4 math
scoreboard players operation @s gold -= $HealCost shop
function pudge:game/gold/update_display
