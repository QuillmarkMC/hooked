#calculate the number of votes required to skip a song (at least 50%)
execute store result score $SkipVotesNeeded music if entity @a
execute store result score #Temp music if entity @a

scoreboard players operation #Temp music %= #2 math
scoreboard players operation $SkipVotesNeeded music /= #2 math

scoreboard players operation $SkipVotesNeeded music += #Temp music