scoreboard players add $Goat.State lobbysigns 1
execute unless score $Goat.State lobbysigns matches 0..6 run scoreboard players set $Goat.State lobbysigns 0
execute if score $Goat.State lobbysigns matches 0 run scoreboard players set $GoatCost shop 10
execute if score $Goat.State lobbysigns matches 1 run scoreboard players set $GoatCost shop 5
execute if score $Goat.State lobbysigns matches 2 run scoreboard players set $GoatCost shop 1
execute if score $Goat.State lobbysigns matches 3 run scoreboard players set $GoatCost shop 10000
execute if score $Goat.State lobbysigns matches 4 run scoreboard players set $GoatCost shop 1337
execute if score $Goat.State lobbysigns matches 5 run scoreboard players set $GoatCost shop 420
execute if score $Goat.State lobbysigns matches 6 run scoreboard players set $GoatCost shop 69
