execute unless score $RealmsRelease var matches 1 as @a at @s run playsound pudge:game.music.hell record @s
execute unless score $RealmsRelease var matches 1 run schedule function pudge:game/maps/forest/river/power/hell/music_loop 719t

execute if score $RealmsRelease var matches 1 as @a at @s run playsound pudge:game.music.fast_piggy record @s
execute if score $RealmsRelease var matches 1 run schedule function pudge:game/maps/forest/river/power/hell/music_loop 1033t