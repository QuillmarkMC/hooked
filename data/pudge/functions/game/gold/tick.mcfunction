#called every tick, handles passive income for all players
scoreboard players remove $Income gold 1
execute if score $Income gold matches ..0 run scoreboard players operation @a[tag=isGamer] gold += $IncomeAmount gold
execute if score $Income gold matches ..0 as @a[tag=isGamer] run function pudge:game/gold/update_display
execute if score $Income gold matches ..0 run scoreboard players operation $Income gold = $IncomeCycle gold