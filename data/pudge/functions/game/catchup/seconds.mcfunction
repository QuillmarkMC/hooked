scoreboard players remove $CatchupTimer timers 1
execute if score $CatchupTimer timers matches ..0 run function pudge:game/catchup/check_score

execute if score $CatchupTimer timers matches ..0 run scoreboard players operation $CatchupTimer timers = $MaxCatchupLengthSeconds timers
schedule function pudge:game/catchup/seconds 1s
