tellraw @s {"text": "You bought Grappling Hook level 5!","color": "green"}
scoreboard players set @s shopItem.Grapple 5
scoreboard players remove @s cdGrappleCurrent 20
scoreboard players operation @s gold -= $GrappleCost shop
function pudge:game/gold/update_display