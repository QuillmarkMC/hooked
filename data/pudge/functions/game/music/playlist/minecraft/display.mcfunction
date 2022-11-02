#display custom advancement with name of song
execute if score $out rng matches 0 run advancement grant @a only pudge:music/blocks
execute if score $out rng matches 1 run advancement grant @a only pudge:music/chirp
execute if score $out rng matches 2 run advancement grant @a only pudge:music/far
execute if score $out rng matches 3 run advancement grant @a only pudge:music/mall
execute if score $out rng matches 4 run advancement grant @a only pudge:music/otherside
execute if score $out rng matches 5 run advancement grant @a only pudge:music/pigstep
execute if score $out rng matches 6 run advancement grant @a only pudge:music/strad
execute if score $out rng matches 7 run advancement grant @a only pudge:music/wait
execute if score $out rng matches 8 run advancement grant @a only pudge:music/ward

schedule function pudge:game/music/display_delay 2t