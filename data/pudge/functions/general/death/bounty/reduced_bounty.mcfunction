#calculate bounty for player who is on a death streak
scoreboard players operation $Num1 math = $BaseBounty var
scoreboard players add @s deathStreak 1
execute if score @s deathStreak matches 2.. run function pudge:general/math/times_0.75
execute if score @s deathStreak matches 3.. run function pudge:general/math/times_0.75
execute if score @s deathStreak matches 4.. run function pudge:general/math/times_0.75
execute if score @s deathStreak matches 5.. run function pudge:general/math/times_0.75
scoreboard players operation @s bounty = $Num1 math