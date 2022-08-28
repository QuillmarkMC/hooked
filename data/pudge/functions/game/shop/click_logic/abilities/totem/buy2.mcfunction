tellraw @s {"text": "You bought Totem of Protection level 2!","color": "green"}
scoreboard players set @s shopItem.Totem 2
scoreboard players set @s totemChance 15
scoreboard players operation @s gold -= $TotemCost shop
function pudge:game/gold/update_display