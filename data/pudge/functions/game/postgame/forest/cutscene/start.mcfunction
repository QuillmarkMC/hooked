#players
gamemode spectator @a
#summon cameras at starting positions
#tp ^ ^ ^1
summon armor_stand 85 75 -17 {Tags:["outroCutscene","outroCam1"],Marker:1b,Invisible:true,Silent:true,Rotation:[43.5f,22.5f]}
#tp ^ ^ ^1
summon armor_stand 55 56 52 {Tags:["outroCutscene","outroCam2"],Marker:1b,Invisible:true,Silent:true,Rotation:[180.0f,5.0f]}
#tp ~-1 ~ ~
summon armor_stand 31.0 64 20.0 {Tags:["outroCutscene","outroCam3"],Marker:1b,Invisible:true,Silent:true,Rotation:[90.0f,10.0f]}
#tp ^ ^ ^-1
summon armor_stand 45 68 19 {Tags:["outroCutscene","outroCam4"],Marker:1b,Invisible:true,Silent:true,Rotation:[-90.0f,45.0f]}
#tp ~1 ~ ~-1
summon armor_stand 73 83 30 {Tags:["outroCutscene","outroCam5"],Marker:1b,Invisible:true,Silent:true,Rotation:[90.0f,51.0f]}

#fix healthbar
title @a actionbar ""

#start camera 1
#function pudge:game/pregame/forest/cutscene/camera1/begin