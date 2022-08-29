tellraw @s {"text": "You bought a Speed Potion!","color": "green"}
scoreboard players operation @s hasteTimer = $HasteLength consumeVar
scoreboard players operation @s gold -= $HasteCost shop
function pudge:game/gold/update_display
