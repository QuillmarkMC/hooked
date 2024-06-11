tellraw @s {"text": "You bought a Ranged Attack Power Potion!","color": "green"}
function pudge:game/consume/ranged_ap/start
scoreboard players operation @s gold -= $RangedAPCost shop
function pudge:game/gold/update_display
