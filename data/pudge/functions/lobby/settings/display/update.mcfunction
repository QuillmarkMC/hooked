#called when the settings board's display needs to be updated after a change
execute if score $Locked lobbysigns matches 0 run function pudge:lobby/settings/display/unlocked/update_unlocked
#execute if score $Locked lobbysigns matches 1 run function pudge:lobby/settings/display/locked/update_locked