tellraw @s {"translate": "text.game.shop.purchase.hook_cd.2","color": "green"}
scoreboard players set @s shopItem.Hook.CD 2
scoreboard players operation @s gold -= $HookCDCost shop
function pudge:game/gold/update_display
scoreboard players operation @s cdHookCurrent -= #8 math