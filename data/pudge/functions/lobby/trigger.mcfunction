execute if score @s lobbysigns matches 1 run function pudge:lobby/start_countdown/check_num_players
execute if score @s lobbysigns matches 2 if score $Count countdown matches 0.. run function pudge:lobby/start_countdown/interrupt
#execute if score @s lobbysigns matches 3 = back page
#execute if score @s lobbysigns matches 4 = forward page
#execute if score @s lobbysigns matches 5 = go to general page

scoreboard players set @s lobbysigns 0