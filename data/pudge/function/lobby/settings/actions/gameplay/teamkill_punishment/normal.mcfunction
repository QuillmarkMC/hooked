scoreboard players add $TeamkillPunishment.State lobbysigns 1
execute unless score $TeamkillPunishment.State lobbysigns matches 0..4 run scoreboard players set $TeamkillPunishment.State lobbysigns 0
execute if score $TeamkillPunishment.State lobbysigns matches 0 run scoreboard players set $TeamkillPunishment gold 10
execute if score $TeamkillPunishment.State lobbysigns matches 1 run scoreboard players set $TeamkillPunishment gold 5
execute if score $TeamkillPunishment.State lobbysigns matches 2 run scoreboard players set $TeamkillPunishment gold 0
execute if score $TeamkillPunishment.State lobbysigns matches 3 run scoreboard players set $TeamkillPunishment gold 30
execute if score $TeamkillPunishment.State lobbysigns matches 4 run scoreboard players set $TeamkillPunishment gold 20
