scoreboard players add $Retract.State lobbysigns 1
execute unless score $Retract.State lobbysigns matches 0..4 run scoreboard players set $Retract.State lobbysigns 0
execute if score $Retract.State lobbysigns matches 0 run scoreboard players set $RetractCost shop 40
execute if score $Retract.State lobbysigns matches 1 run scoreboard players set $RetractCost shop 35
execute if score $Retract.State lobbysigns matches 2 run scoreboard players set $RetractCost shop 20
execute if score $Retract.State lobbysigns matches 3 run scoreboard players set $RetractCost shop 60
execute if score $Retract.State lobbysigns matches 4 run scoreboard players set $RetractCost shop 45
