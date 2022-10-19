#dynamically set required kills based on participating players
#+20 kills for every 2 players in the game
#odd number of players rounds up
execute store result score $Num1 math if entity @a[tag=isGamer]
scoreboard players operation $Num1 math /= #2 math
scoreboard players operation $Num2 math = $Num1 math
scoreboard players operation $Num2 math %= #2 math
execute if score $Num2 math matches 1.. run scoreboard players add $Num1 math 1
scoreboard players operation $Num1 math *= #20 math
scoreboard players operation $TotalRequiredKills var = $Num1 math