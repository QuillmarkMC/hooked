tellraw @s {"text": "You bought the Hook Cooldown Upgrade level 5!","color": "green"}
scoreboard players set @s shopItem.Hook.CD 5
scoreboard players operation @s gold -= $HookCDCost shop
function pudge:game/gold/update_display
scoreboard players operation @s cdHookCurrent -= #8 math