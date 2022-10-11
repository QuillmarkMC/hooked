#initialize/reset lobby config options
scoreboard players operation $Page lobbysigns = $Page lobbysigns.default
scoreboard players operation $Locked lobbysigns = $Locked lobbysigns.default

#general
scoreboard players operation $VictoryType lobbysigns = $VictoryType lobbysigns.default
scoreboard players operation $TotalRequiredKills var = $TotalRequiredKills lobbysigns.default
scoreboard players operation $TotalTimeMinutes var = $TotalTimeMinutes lobbysigns.default

#maps
scoreboard players operation $LoadMap var = $LoadMap lobbysigns.default


function pudge:lobby/settings/display/update