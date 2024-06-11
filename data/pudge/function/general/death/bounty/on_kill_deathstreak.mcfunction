#slightly increase player's bounty if they were previously on a death streak
scoreboard players remove @s deathStreak 1
scoreboard players operation $Num1 math = @s bounty
function pudge:general/math/times_1.5
scoreboard players operation @s bounty = $Num1 math
execute if score @s bounty >= $BaseBounty var run scoreboard players operation @s bounty > $BaseBounty var

#if player is on 2+ killstreak fully reset death streak
execute if score @s killstreak matches 2.. run scoreboard players reset @s deathStreak
execute if score @s killstreak matches 2.. run scoreboard players operation @s bounty = $BaseBounty var