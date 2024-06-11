#checks for certain abilities that would otherwise get stuck if a player disconnected during them
execute as @a[tag=holdingPlayer] run function pudge:game/ability/grab/dc/check_for_grabbed

schedule function pudge:game/scheduled_timers/dc_players 5t