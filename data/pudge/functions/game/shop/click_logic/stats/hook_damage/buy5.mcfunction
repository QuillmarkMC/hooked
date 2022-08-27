tellraw @s {"text": "You bought the Hook Damage Upgrade level 5!","color": "green"}
scoreboard players set @s shopItem.Hook.Damage 5
scoreboard players operation @s gold -= $HookDamageCost shop
function pudge:game/gold/update_display
scoreboard players add @s hookDamage 10