scoreboard players remove $CatchupTime timers 1
execute if score $CatchupTime timers matches ..0 run function pudge:game/catchup/check_score

execute if score $CatchupTime timers matches ..0 run scoreboard players operation $CatchupTime timers = $MaxCatchupLengthSeconds timers
schedule function pudge:game/catchup/seconds 1s
