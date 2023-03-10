#check if any team is behind by a significant number of kills, reward them if so
scoreboard players set #TempCatchup timers 0
scoreboard players set $MercyRule timers 0
#check if score difference is 5+ kills
scoreboard players operation $Num1 math = $RedScore var
scoreboard players operation $Num2 math = $BlueScore var
scoreboard players operation $Num1 math -= $Num2 math
execute if score $Num1 math matches 5.. run scoreboard players set #TempCatchup timers 1
execute if score $Num1 math matches ..-5 run scoreboard players set #TempCatchup timers 2
execute unless score $Num1 math matches -24..24 run scoreboard players set $MercyRule timers 1

execute if score #TempCatchup timers matches 1 run function pudge:game/catchup/reward/blue
execute if score #TempCatchup timers matches 2 run function pudge:game/catchup/reward/red