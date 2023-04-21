scoreboard players add $RangedAP.State lobbysigns 1
execute unless score $RangedAP.State lobbysigns matches 0..4 run scoreboard players set $RangedAP.State lobbysigns 0
execute if score $RangedAP.State lobbysigns matches 0 run scoreboard players set $RangedAPCost shop 20
execute if score $RangedAP.State lobbysigns matches 1 run scoreboard players set $RangedAPCost shop 15
execute if score $RangedAP.State lobbysigns matches 2 run scoreboard players set $RangedAPCost shop 10
execute if score $RangedAP.State lobbysigns matches 3 run scoreboard players set $RangedAPCost shop 40
execute if score $RangedAP.State lobbysigns matches 4 run scoreboard players set $RangedAPCost shop 30
