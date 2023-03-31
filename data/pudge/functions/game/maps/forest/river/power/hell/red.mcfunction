scoreboard players add $HellTimer river 1

execute if score $HellTimer river matches ..100 run title @a[gamemode=adventure] subtitle {"text": "Last team standing!","color": "white"}
execute unless score $HellTimer river matches ..100 run title @a[gamemode=adventure] subtitle ""
title @a[gamemode=spectator,tag=isGamer] subtitle {"text": "You cannot respawn during Deathmatch.","color": "white"}
title @a[gamemode=spectator,tag=!isGamer] subtitle ""
title @a times 0 100 0
title @a title "\uE009"
#title @a subtitle "\uE014\uE007\uE015\uE009"
#title @a times 0 100 0
#execute if score $HellTimer river matches ..100 run title @a[gamemode=adventure] title {"text": "Last team standing!","color": "white"}
#execute unless score $HellTimer river matches ..100 run title @a[gamemode=adventure] title ""
#title @a[gamemode=spectator,tag=isGamer] title {"text": "You cannot respawn during Deathmatch.","color": "white"}
#title @a[gamemode=spectator,tag=!isGamer] title ""


#slowly drain health, increasing in frequency as hell timer increases
scoreboard players operation #Temp math = $HellTimer river
execute if score $HellTimer river matches 0..200 run scoreboard players operation #Temp math %= #100 math
execute if score $HellTimer river matches 201..400 run scoreboard players operation #Temp math %= #80 math
execute if score $HellTimer river matches 401..600 run scoreboard players operation #Temp math %= #60 math
execute if score $HellTimer river matches 601..800 run scoreboard players operation #Temp math %= #40 math
execute if score $HellTimer river matches 801.. run scoreboard players operation #Temp math %= #20 math
execute if score #Temp math matches 0 run scoreboard players remove @a[gamemode=adventure,tag=isGamer] health 10

execute store result score #Temp1 river if entity @a[gamemode=adventure,tag=isGamer,team=red]
execute store result score #Temp2 river if entity @a[gamemode=adventure,tag=isGamer,team=blue]
schedule function pudge:game/maps/forest/river/power/hell/red 1t
execute if score #Temp1 river matches 0 unless score $HellTimer river matches ..1 run function pudge:game/maps/forest/river/power/hell/end
execute if score #Temp2 river matches 0 unless score #Temp1 river matches 0 unless score $HellTimer river matches ..1 run function pudge:game/maps/forest/river/power/hell/end