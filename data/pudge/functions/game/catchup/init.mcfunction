#called at the beginning of a game to initialize catchup mechanic
scoreboard players operation $CatchupTimer timers = $MaxCatchupLengthSeconds timers

schedule function pudge:game/catchup/seconds 1s
