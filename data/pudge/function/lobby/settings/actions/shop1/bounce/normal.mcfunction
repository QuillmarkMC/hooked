scoreboard players add $Bounce.State lobbysigns 1
execute unless score $Bounce.State lobbysigns matches 0..4 run scoreboard players set $Bounce.State lobbysigns 0
execute if score $Bounce.State lobbysigns matches 0 run scoreboard players set $BounceCost shop 25
execute if score $Bounce.State lobbysigns matches 1 run scoreboard players set $BounceCost shop 20
execute if score $Bounce.State lobbysigns matches 2 run scoreboard players set $BounceCost shop 10
execute if score $Bounce.State lobbysigns matches 3 run scoreboard players set $BounceCost shop 40
execute if score $Bounce.State lobbysigns matches 4 run scoreboard players set $BounceCost shop 30
