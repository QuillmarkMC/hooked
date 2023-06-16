#change state
function pudge:general/change_state
#set state
scoreboard players set $State var 2
scoreboard players set $StartGame var 1

#init map
execute if score $LoadMap var matches 1 run function pudge:game/maps/forest/init

#intro cutscene
#execute if score $LoadMap var matches 1 run function pudge:game/pregame/forest/cutscene/start
#skip the cutscene for realms version
execute if score $LoadMap var matches 1 run function pudge:game/pregame/forest/cutscene/end