tellraw @s {"text": "You bought Ricochet Arrows level 1!","color": "green"}
scoreboard players set @s shopItem.Bounce 1
scoreboard players set @s bounceCount 1
scoreboard players operation @s gold -= $BounceCost shop
function pudge:game/gold/update_display

