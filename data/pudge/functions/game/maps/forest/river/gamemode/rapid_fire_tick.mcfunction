#logic for rapid fire chaos gamemode
#called every tick from pudge:game/maps/forest/river/tick
scoreboard players remove $RapidFireModeTimer river 1
execute if score $RapidFireModeTimer river matches ..0 as @a[tag=isGamer,tag=!dead] run function pudge:game/maps/forest/river/power/rapid_fire/start
execute if score $RapidFireModeTimer river matches ..0 run scoreboard players operation $RapidFireModeTimer river = $RapidFireModeTimerMax river