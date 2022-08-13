#change state
function pudge:general/change_state
#set state
scoreboard players set $State var 0
#marker for spawn location
summon marker 9 -60 14 {Tags:["lobbySpawn","lobbyMarker"],Rotation:[-90.0f,0.0f]}
#npcs for credits

#default config options
scoreboard players set $LoadMap var 1