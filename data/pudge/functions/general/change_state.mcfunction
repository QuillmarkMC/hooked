#called by every state's load function, unloads the previous state
execute if score $State var matches 0 run function pudge:lobby/unload
#execute if score $State var matches 1 run function pudge:team_select/unload
execute if score $State var matches 2 run function pudge:game/unload