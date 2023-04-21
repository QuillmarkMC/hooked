scoreboard players remove @s adrenalineTimer 1

scoreboard players operation $Num1 math = @s adrenalineTimer
scoreboard players operation $Num1 math %= #20 math
execute if score $Num1 math matches 19 if score @s adrenalineTimer matches ..100 at @s run playsound block.note_block.harp ambient @s ~ ~ ~ 1 1.5

execute if score $Num1 math matches 0 run title @s times 2 10 3
execute if score $Num1 math matches 0 run title @s subtitle ""

execute if score @s adrenalineTimer matches 100 run title @s title {"text": "5","color": "yellow"}
execute if score @s adrenalineTimer matches 80 run title @s title {"text": "4","color": "yellow"}
execute if score @s adrenalineTimer matches 60 run title @s title {"text": "3","color": "yellow"}
execute if score @s adrenalineTimer matches 40 run title @s title {"text": "2","color": "yellow"}
execute if score @s adrenalineTimer matches 20 run title @s title {"text": "1","color": "yellow"}