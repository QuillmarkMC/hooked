#custom implementation of regen potion effect
#scoreboard players remove @s regenTimer 1
#scoreboard players operation $Num1 math = @s regenTimer
#scoreboard players operation $Num1 math += #20 math
#scoreboard players operation $Num1 math %= $RegenTick regenTimer

#execute if score $Num1 math matches 0 run scoreboard players add @s health 2
#execute if score @s regenTimer matches 0 run scoreboard players set @s regenTimer -1

scoreboard players remove @s regenTimer 1
scoreboard players add @s health 1
execute if score @s regenTimer matches 0 run scoreboard players set @s regenTimer -1