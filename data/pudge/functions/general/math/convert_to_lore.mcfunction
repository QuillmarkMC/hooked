#this function converts a health or damage value into heart count for display purposes
#can also convert ticks into seconds
#example: input=31, output=1.55
scoreboard players operation $Num.1 math = $Num1 math
scoreboard players operation $Num.2 math = $Num1 math
scoreboard players operation $Num.3 math = $Num1 math

#get ones digit
scoreboard players operation $Num.1 math /= #20 math

#get tenths digit
scoreboard players operation $Num.2 math %= #20 math
scoreboard players operation $Num.2 math /= #2 math

#get hundreths digit
scoreboard players operation $Num.3 math %= #2 math
execute if score $Num.3 math matches 1 run scoreboard players set $Num.3 math 5