scoreboard players remove @s rapidFireChargeTimer 1

scoreboard players operation $Num1 math = @s rapidFireChargeTimer
scoreboard players operation $Num1 math %= #20 math
execute if score $Num1 math matches 19 at @s run playsound block.note_block.chime ambient @s ~ ~ ~ 1 1.5

execute if score @s rapidFireChargeTimer matches 59 run title @s times 2 10 3
execute if score @s rapidFireChargeTimer matches 59 run title @s subtitle ""
execute if score $Num1 math matches 0 run title @s times 2 10 3
execute if score $Num1 math matches 0 run title @s subtitle ""

execute if score @s rapidFireChargeTimer matches 59 run title @s title {"text": "3","color": "blue"}
execute if score @s rapidFireChargeTimer matches 40 run title @s title {"text": "2","color": "blue"}
execute if score @s rapidFireChargeTimer matches 20 run title @s title {"text": "1","color": "blue"}

execute if score @s rapidFireChargeTimer matches 0 run function pudge:game/maps/forest/river/power/rapid_fire/fire