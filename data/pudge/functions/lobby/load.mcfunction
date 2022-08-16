#change state
function pudge:general/change_state
#set state
scoreboard players set $State var 0
#marker for spawn location
summon marker 202.0 64.0 -47.5 {Tags:["lobbySpawn","lobbyMarker"],Rotation:[-180.0f,12.0f]}
#npcs for credits

#default config options
scoreboard players set $LoadMap var 1