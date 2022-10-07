#recursive function to keep doubling catchup reward the farther behind a team is
scoreboard players remove $Num1 math 1
scoreboard players operation $CatchupReward timers *= #2 math
execute if score $Num1 math matches 1.. run function pudge:game/catchup/reward/calculate