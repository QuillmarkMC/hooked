scoreboard players remove @s suicideTimer 1
execute at @s run particle flame ~ ~1 ~ .5 .5 .5 0 5 force

scoreboard players operation $Num1 math = @s suicideTimer
scoreboard players operation $Num1 math %= #20 math
execute if score $Num1 math matches 19 at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 1 0.5

execute if score @s suicideTimer matches 199 run title @s times 2 10 3
execute if score @s suicideTimer matches 199 run title @s subtitle ""
execute if score $Num1 math matches 0 run title @s times 2 10 3
execute if score $Num1 math matches 0 run title @s subtitle ""

execute if score @s suicideTimer matches 199 run title @s title {"text": "10","color": "dark_red"}
execute if score @s suicideTimer matches 180 run title @s title {"text": "9","color": "dark_red"}
execute if score @s suicideTimer matches 160 run title @s title {"text": "8","color": "dark_red"}
execute if score @s suicideTimer matches 140 run title @s title {"text": "7","color": "dark_red"}
execute if score @s suicideTimer matches 120 run title @s title {"text": "6","color": "dark_red"}
execute if score @s suicideTimer matches 100 run title @s title {"text": "5","color": "dark_red"}
execute if score @s suicideTimer matches 80 run title @s title {"text": "4","color": "dark_red"}
execute if score @s suicideTimer matches 60 run title @s title {"text": "3","color": "dark_red"}
execute if score @s suicideTimer matches 40 run title @s title {"text": "2","color": "dark_red"}
execute if score @s suicideTimer matches 20 run title @s title {"text": "1","color": "dark_red"}

execute if score @s suicideTimer matches 0 run function pudge:game/maps/forest/river/power/suicide/end