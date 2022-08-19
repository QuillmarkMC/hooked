scoreboard players add $HellTimer river 1

execute if score $HellTimer river matches ..100 run title @a[gamemode=adventure] subtitle "Kill or be killed!"
execute unless score $HellTimer river matches ..100 run title @a[gamemode=adventure] subtitle ""
title @a[gamemode=spectator] subtitle "You cannot respawn during Deathmatch"
title @a times 0 100 0
title @a title "\uE009"

#slowly drain health
scoreboard players operation #Temp math = $HellTimer river
scoreboard players operation #Temp math %= #100 math
execute if score #Temp math matches 0 run scoreboard players remove @a[gamemode=adventure,tag=isGamer] health 1

execute store result score #Temp river if entity @a[gamemode=adventure,tag=isGamer]
execute if score #Temp river matches ..1 run function pudge:game/maps/forest/river/power/hell/end

schedule function pudge:game/maps/forest/river/power/hell/red 1t