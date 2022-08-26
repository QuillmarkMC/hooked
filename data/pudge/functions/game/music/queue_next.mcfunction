#schedule new song to play just when current song ends
execute if score $out rng matches 0 run schedule function pudge:game/music/generate 4468t
execute if score $out rng matches 1 run schedule function pudge:game/music/generate 1662t
execute if score $out rng matches 2 run schedule function pudge:game/music/generate 2306t
execute if score $out rng matches 3 run schedule function pudge:game/music/generate 3029t