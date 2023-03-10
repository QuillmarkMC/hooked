#called when the settings board's display needs to be updated after a change
fill 199 66 -66 205 63 -66 air
execute if score $Locked lobbysigns matches 0 run function pudge:lobby/settings/display/unlocked/update_unlocked
execute if score $Locked lobbysigns matches 1 run function pudge:lobby/settings/display/locked/update_locked

#change campfire in center of lobby
execute if score $GameMode var matches -1 run fill 204 63 -52 200 64 -55 minecraft:soul_campfire replace minecraft:campfire
execute if score $GameMode var matches 1 run fill 204 63 -52 200 64 -55 minecraft:campfire replace minecraft:soul_campfire

#reset timer for automatic updates
scoreboard players operation $SignUpdateTimer lobbyvar = $SignUpdateInterval lobbyvar