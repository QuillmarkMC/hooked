#display custom advancement with name of song
execute if score $out rng matches 0 run advancement grant @a only pudge:music/perfect_hero
execute if score $out rng matches 1 run advancement grant @a only pudge:music/adrenaline
execute if score $out rng matches 2 run advancement grant @a only pudge:music/all_over_me
execute if score $out rng matches 3 run advancement grant @a only pudge:music/because_of_you
execute if score $out rng matches 4 run advancement grant @a only pudge:music/deja_vu
execute if score $out rng matches 5 run advancement grant @a only pudge:music/all_star
execute if score $out rng matches 6 run advancement grant @a only pudge:music/gas_gas_gas
execute if score $out rng matches 7 run advancement grant @a only pudge:music/wont_fall_apart
execute if score $out rng matches 8 run advancement grant @a only pudge:music/kickstart_my_heart
execute if score $out rng matches 9 run advancement grant @a only pudge:music/night_of_fire
execute if score $out rng matches 10 run advancement grant @a only pudge:music/nitrofire
execute if score $out rng matches 11 run advancement grant @a only pudge:music/sleep_in_tokyo
execute if score $out rng matches 12 run advancement grant @a only pudge:music/rebel_yell
execute if score $out rng matches 13 run advancement grant @a only pudge:music/remember_me
execute if score $out rng matches 14 run advancement grant @a only pudge:music/revenge
execute if score $out rng matches 15 run advancement grant @a only pudge:music/running_in_the_90s
execute if score $out rng matches 16 run advancement grant @a only pudge:music/race_of_the_night
execute if score $out rng matches 17 run advancement grant @a only pudge:music/the_top
execute if score $out rng matches 18 run advancement grant @a only pudge:music/you_give_love_a_bad_name
execute if score $out rng matches 19 run advancement grant @a only pudge:music/gonna_go_far_kid

schedule function pudge:game/music/display_delay 2t