scoreboard players add $IncomeAmount.State lobbysigns 1
execute unless score $IncomeAmount.State lobbysigns matches 0..4 run scoreboard players set $IncomeAmount.State lobbysigns 0
execute if score $IncomeAmount.State lobbysigns matches 0 run scoreboard players set $IncomeAmount gold 1
execute if score $IncomeAmount.State lobbysigns matches 1 run scoreboard players set $IncomeAmount gold 5
execute if score $IncomeAmount.State lobbysigns matches 2 run scoreboard players set $IncomeAmount gold 4
execute if score $IncomeAmount.State lobbysigns matches 3 run scoreboard players set $IncomeAmount gold 3
execute if score $IncomeAmount.State lobbysigns matches 4 run scoreboard players set $IncomeAmount gold 2
