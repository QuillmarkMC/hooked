execute if score @s lobbysigns matches 1 run function pudge:lobby/start_countdown/check_num_players
execute if score @s lobbysigns matches 2 if score $Count countdown matches 0.. run function pudge:lobby/start_countdown/interrupt
execute if score @s lobbysigns matches 3 run function pudge:lobby/settings/display/back_page
execute if score @s lobbysigns matches 4 run function pudge:lobby/settings/display/forward_page
#execute if score @s lobbysigns matches 5 = go to general page
execute if score @s lobbysigns matches 200 run function pudge:lobby/settings/actions/maps/change

execute if score @s lobbysigns matches 1.. run function pudge:lobby/settings/display/update
scoreboard players set @s lobbysigns 0