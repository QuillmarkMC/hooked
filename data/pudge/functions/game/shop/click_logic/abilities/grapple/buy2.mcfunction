tellraw @s {"text": "You bought Grappling Hook level 2!","color": "green"}
scoreboard players set @s shopItem.Grapple 2
scoreboard players remove @s cdGrappleCurrent 1
scoreboard players operation @s gold -= $GrappleCost shop
function pudge:game/gold/update_display

