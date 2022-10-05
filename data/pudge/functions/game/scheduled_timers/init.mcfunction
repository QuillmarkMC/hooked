#called at the beginning of a game to initialize global timers
#max length timer
scoreboard players operation $GameTime timers = $MaxGameLengthSeconds timers
#no kills timer
scoreboard players operation $KillTime timers = $MaxLengthPerKillSeconds timers