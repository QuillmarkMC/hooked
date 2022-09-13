execute if score @s lobbysigns matches 1 run function pudge:lobby/start_countdown/check_num_players
execute if score @s lobbysigns matches 2 if score $Count countdown matches 0.. run function pudge:lobby/start_countdown/interrupt
