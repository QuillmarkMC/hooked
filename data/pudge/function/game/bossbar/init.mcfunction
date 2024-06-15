scoreboard players set $RedScore var 0
scoreboard players set $BlueScore var 0
scoreboard players operation $TimeLeftSeconds var = $TotalTimeMinutes var
execute store result bossbar score max run scoreboard players operation $TimeLeftSeconds var *= #60 math
execute store result bossbar score value run scoreboard players get $TimeLeftSeconds var

execute if score $VictoryType lobbysigns matches 1 run bossbar set score color white
execute if score $VictoryType lobbysigns matches 1 if score $VictoryKills.State lobbysigns matches 0 run function pudge:game/bossbar/calculate_kills
execute unless score $VictoryType lobbysigns matches 1 run bossbar set score color yellow
execute unless score $VictoryType lobbysigns matches 1 run function pudge:game/scheduled_timers/victory_time
function pudge:game/bossbar/update
bossbar set score players @a
