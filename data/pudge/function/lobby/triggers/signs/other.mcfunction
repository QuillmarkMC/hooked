execute if score @s lobbysigns matches 1 run function pudge:lobby/start_countdown/check_num_players
execute if score @s lobbysigns matches 2 if score $Count countdown matches 0.. run function pudge:lobby/start_countdown/interrupt/check_permission
execute if score @s lobbysigns matches 3 run function pudge:lobby/settings/actions/navigation/back_page
execute if score @s lobbysigns matches 4 run function pudge:lobby/settings/actions/navigation/forward_page
execute if score @s lobbysigns matches 5 run function pudge:lobby/settings/actions/navigation/jump_to_general
execute if score @s lobbysigns matches 6 run function pudge:lobby/settings/actions/navigation/jump_to_gameplay
execute if score @s lobbysigns matches 7 run function pudge:lobby/settings/actions/navigation/jump_to_shop1
execute if score @s lobbysigns matches 8 run function pudge:lobby/settings/actions/navigation/jump_to_shop2
execute if score @s lobbysigns matches 9 run function pudge:lobby/settings/actions/navigation/jump_to_credits