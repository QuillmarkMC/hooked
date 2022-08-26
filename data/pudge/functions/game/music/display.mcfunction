#display custom advancement with name of song
execute if score $out rng matches 0 run advancement grant @a only pudge:music/sandstorm
execute if score $out rng matches 1 run advancement grant @a only pudge:music/cool_guy
execute if score $out rng matches 2 run advancement grant @a only pudge:music/flame
execute if score $out rng matches 3 run advancement grant @a only pudge:music/rave_a

schedule function pudge:game/music/display_delay 1t