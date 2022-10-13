scoreboard players add $IncomeCycle.State lobbysigns 1
execute unless score $IncomeCycle.State lobbysigns matches 0..4 run scoreboard players set $IncomeCycle.State lobbysigns 0
execute if score $IncomeCycle.State lobbysigns matches 0 run scoreboard players set $IncomeCycle shop 4
execute if score $IncomeCycle.State lobbysigns matches 1 run scoreboard players set $IncomeCycle shop 2
execute if score $IncomeCycle.State lobbysigns matches 2 run scoreboard players set $IncomeCycle shop 1
execute if score $IncomeCycle.State lobbysigns matches 3 run scoreboard players set $IncomeCycle shop 10
execute if score $IncomeCycle.State lobbysigns matches 4 run scoreboard players set $IncomeCycle shop 5
