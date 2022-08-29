tellraw @s {"text": "You bought a Speed Potion!","color": "green"}
effect give @s speed 20 2 false
effect give @s dolphins_grace 20 0 false
scoreboard players operation @s gold -= $HasteCost shop
function pudge:game/gold/update_display
