scoreboard players add $HookCD.State lobbysigns 1
execute unless score $HookCD.State lobbysigns matches 0..4 run scoreboard players set $HookCD.State lobbysigns 0
execute if score $HookCD.State lobbysigns matches 0 run scoreboard players set $HookCDCost shop 30
execute if score $HookCD.State lobbysigns matches 1 run scoreboard players set $HookCDCost shop 25
execute if score $HookCD.State lobbysigns matches 2 run scoreboard players set $HookCDCost shop 15
execute if score $HookCD.State lobbysigns matches 3 run scoreboard players set $HookCDCost shop 45
execute if score $HookCD.State lobbysigns matches 4 run scoreboard players set $HookCDCost shop 35
