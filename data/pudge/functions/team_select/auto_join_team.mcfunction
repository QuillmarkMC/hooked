scoreboard objectives add sus dummy
execute store result score $red_num sus if entity @a[team=red]
execute store result score $blue_num sus if entity @a[team=blue]
execute if score $red_num sus < $blue_num sus run team join red
execute if score $blue_num sus <= $red_num sus run team join blue
execute if entity @s[team=blue] run tellraw @s [{"text":"[","color": "white"},{"text":"!","color": "dark_gray"},{"text":"] You've been automatically added to the ","color":"white"},{"text":"Blue Team","color":"aqua"},{"text":".","color":"white"}]
execute if entity @s[team=red] run tellraw @s [{"text":"[","color": "white"},{"text":"!","color": "dark_gray"},{"text":"] You've been automatically added to the ","color":"white"},{"text":"Red Team","color":"red"},{"text":".","color":"white"}]
scoreboard objectives remove sus