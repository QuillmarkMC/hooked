#display custom advancement with name of song
execute if score $out rng matches 0 run advancement grant @a only pudge:music/sandstorm
execute if score $out rng matches 1 run advancement grant @a only pudge:music/positive
execute if score $out rng matches 2 run advancement grant @a only pudge:music/flame
execute if score $out rng matches 3 run advancement grant @a only pudge:music/rave_a
execute if score $out rng matches 4 run advancement grant @a only pudge:music/avast
execute if score $out rng matches 5 run advancement grant @a only pudge:music/megalovania
execute if score $out rng matches 6 run advancement grant @a only pudge:music/crypteque
execute if score $out rng matches 7 run advancement grant @a only pudge:music/dota
execute if score $out rng matches 8 run advancement grant @a only pudge:music/abandon_ship
execute if score $out rng matches 9 run advancement grant @a only pudge:music/all_night
execute if score $out rng matches 10 run advancement grant @a only pudge:music/can_you_feel_my_heart
execute if score $out rng matches 11 run advancement grant @a only pudge:music/crab_rave
execute if score $out rng matches 12 run advancement grant @a only pudge:music/elite_four
execute if score $out rng matches 13 run advancement grant @a only pudge:music/leviathan
execute if score $out rng matches 14 run advancement grant @a only pudge:music/space_invaders

schedule function pudge:game/music/display_delay 2t