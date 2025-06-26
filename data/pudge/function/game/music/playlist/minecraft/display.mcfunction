#display custom advancement with name of song
execute if score $out rng matches 0 run advancement grant @a only pudge:music/minecraft/ascension
execute if score $out rng matches 1 run advancement grant @a only pudge:music/minecraft/broken-heart-of-ender
execute if score $out rng matches 2 run advancement grant @a only pudge:music/minecraft/clockwork-crafter
execute if score $out rng matches 3 run advancement grant @a only pudge:music/minecraft/hastilude
execute if score $out rng matches 4 run advancement grant @a only pudge:music/minecraft/lava-chicken
execute if score $out rng matches 5 run advancement grant @a only pudge:music/minecraft/nematocyst
execute if score $out rng matches 6 run advancement grant @a only pudge:music/minecraft/otherside
execute if score $out rng matches 7 run advancement grant @a only pudge:music/minecraft/pigstep
execute if score $out rng matches 8 run advancement grant @a only pudge:music/minecraft/summit
execute if score $out rng matches 9 run advancement grant @a only pudge:music/minecraft/tears
execute if score $out rng matches 10 run advancement grant @a only pudge:music/minecraft/the-arch-illager
execute if score $out rng matches 11 run advancement grant @a only pudge:music/minecraft/the-four-horsemen

schedule function pudge:game/music/display_delay 2t