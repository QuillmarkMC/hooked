#initialize/reset lobby config options
scoreboard players set $Page lobbysigns 1
execute unless score $Locked lobbysigns matches 1 run scoreboard players set $Locked lobbysigns 0

#general
scoreboard players set $VictoryType lobbysigns 1
scoreboard players set $TotalRequiredKills var 60
scoreboard players set $TotalTimeMinutes var 20
scoreboard players set $GameMode var 1
scoreboard players set $VictoryTime.State lobbysigns 0
scoreboard players set $VictoryKills.State lobbysigns 0
scoreboard players set $Soundtrack music 0

#maps
scoreboard players set $LoadMap var 1


function pudge:lobby/settings/display/update