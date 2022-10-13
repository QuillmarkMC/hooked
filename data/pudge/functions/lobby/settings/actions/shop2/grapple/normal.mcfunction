scoreboard players add $Grapple.State lobbysigns 1
execute unless score $Grapple.State lobbysigns matches 0..4 run scoreboard players set $Grapple.State lobbysigns 0
execute if score $Grapple.State lobbysigns matches 0 run scoreboard players set $GrappleCost shop 50
execute if score $Grapple.State lobbysigns matches 1 run scoreboard players set $GrappleCost shop 45
execute if score $Grapple.State lobbysigns matches 2 run scoreboard players set $GrappleCost shop 35
execute if score $Grapple.State lobbysigns matches 3 run scoreboard players set $GrappleCost shop 65
execute if score $Grapple.State lobbysigns matches 4 run scoreboard players set $GrappleCost shop 55
