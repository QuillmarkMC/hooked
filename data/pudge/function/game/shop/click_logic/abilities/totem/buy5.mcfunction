tellraw @s {"text": "You bought Totem of Protection level 5!","color": "green"}
scoreboard players set @s shopItem.Totem 5
scoreboard players set @s totemChance 30
scoreboard players operation @s gold -= $TotemCost shop
function pudge:game/gold/update_display