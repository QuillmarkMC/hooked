#players
gamemode spectator @a
#summon cameras at starting positions
summon armor_stand 54 73 58 {Tags:["introCutscene","introCam1"],Marker:1b,Invisible:true,Silent:true,Rotation:[-152.4f,12.0f]}
summon marker 94 73 -18 {Tags:["introCutscene","introCam1","introCam1TPTarget"]}
summon marker 61 65 -18 {Tags:["introCutscene","introCam1","introCam1FacingTarget"],Rotation:[44.0f,0.0f]}

summon armor_stand 56 59 23 {Tags:["introCutscene","introCam2"],Marker:1b,Invisible:true,Silent:true,Rotation:[180.0f,20.0f]}
summon marker 56 59 19 {Tags:["introCutscene","introCam2","introCam2FacingTarget"]}

summon armor_stand 18 64 8 {Tags:["introCutscene","introCam3"],Marker:1b,Invisible:true,Silent:true,Rotation:[-12.0f,7.0f]}
summon marker 22 64 31 {Tags:["introCutscene","introCam3","introCam3FacingTarget"]}

summon armor_stand 57 69 -21 {Tags:["introCutscene","introCam4"],Marker:1b,Invisible:true,Silent:true,Rotation:[0.0f,0.0f]}
#start camera 1
function pudge:game/pregame/forest/cutscene/camera1/begin