execute if score @s lobbysigns matches 1 run function pudge:lobby/start_countdown/check_num_players
execute if score @s lobbysigns matches 2 if score $Count countdown matches 0.. run function pudge:lobby/start_countdown/interrupt
execute if score @s lobbysigns matches 3 run function pudge:lobby/settings/actions/navigation/back_page
execute if score @s lobbysigns matches 4 run function pudge:lobby/settings/actions/navigation/forward_page
execute if score @s lobbysigns matches 5 run function pudge:lobby/settings/actions/navigation/jump_to_general
execute if score @s lobbysigns matches 6 run function pudge:lobby/settings/actions/navigation/jump_to_maps
execute if score @s lobbysigns matches 7 run function pudge:lobby/settings/actions/navigation/jump_to_shop1
execute if score @s lobbysigns matches 8 run function pudge:lobby/settings/actions/navigation/jump_to_shop2
execute if score @s lobbysigns matches 9 run function pudge:lobby/settings/actions/navigation/jump_to_credits
execute if score @s lobbysigns matches 100 run function pudge:lobby/settings/actions/general/victory_type
execute if score @s lobbysigns matches 101 run function pudge:lobby/settings/actions/general/victory_kills/check_input
execute if score @s lobbysigns matches 102 run function pudge:lobby/settings/actions/general/victory_time/check_input
execute if score @s lobbysigns matches 103 run function pudge:lobby/settings/actions/general/reset
execute if score @s lobbysigns matches 104 run function pudge:lobby/settings/actions/general/gamemode
execute if score @s lobbysigns matches 105 run function pudge:lobby/settings/actions/general/soundtrack
execute if score @s lobbysigns matches 200 run function pudge:lobby/settings/actions/maps/change
execute if score @s lobbysigns matches 300 run function pudge:lobby/settings/actions/shop1/hook_cd/check_input
execute if score @s lobbysigns matches 301 run function pudge:lobby/settings/actions/shop1/hook_damage/check_input
execute if score @s lobbysigns matches 302 run function pudge:lobby/settings/actions/shop1/bounce/check_input
execute if score @s lobbysigns matches 303 run function pudge:lobby/settings/actions/shop1/melee_damage/check_input
execute if score @s lobbysigns matches 304 run function pudge:lobby/settings/actions/shop1/extra_health/check_input
execute if score @s lobbysigns matches 305 run function pudge:lobby/settings/actions/shop1/heal/check_input
execute if score @s lobbysigns matches 306 run function pudge:lobby/settings/actions/shop1/haste/check_input
execute if score @s lobbysigns matches 307 run function pudge:lobby/settings/actions/shop1/ranged_ap/check_input
execute if score @s lobbysigns matches 500 run function pudge:lobby/settings/actions/credits/trailer

execute unless score @s lobbysigns matches 1..2 at @s run playsound block.wooden_button.click_on ambient @s ~ ~ ~ 0.75 0.75

function pudge:lobby/settings/display/update
scoreboard players set @s lobbysigns 0