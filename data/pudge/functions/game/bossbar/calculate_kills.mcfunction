#dynamically set required kills based on participating players
execute store result score $Num1 math if entity @a[tag=isGamer]
scoreboard players operation $Num1 math /= #2 math
scoreboard players add $Num1 math 1
scoreboard players operation $Num1 math *= #20 math
scoreboard players operation $TotalRequiredKills var = $Num1 math