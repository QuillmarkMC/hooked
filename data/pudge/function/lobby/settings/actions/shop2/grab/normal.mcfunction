scoreboard players add $Grab.State lobbysigns 1
execute unless score $Grab.State lobbysigns matches 0..4 run scoreboard players set $Grab.State lobbysigns 0
execute if score $Grab.State lobbysigns matches 0 run scoreboard players set $GrabCost shop 45
execute if score $Grab.State lobbysigns matches 1 run scoreboard players set $GrabCost shop 40
execute if score $Grab.State lobbysigns matches 2 run scoreboard players set $GrabCost shop 25
execute if score $Grab.State lobbysigns matches 3 run scoreboard players set $GrabCost shop 65
execute if score $Grab.State lobbysigns matches 4 run scoreboard players set $GrabCost shop 50
