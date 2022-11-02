#stop all current songs in case of overlap
function pudge:game/music/playlist/minecraft/stop_all

#play song based on rng
execute if score $out rng matches 0 as @a at @s run playsound game.music.blocks record @s
execute if score $out rng matches 1 as @a at @s run playsound game.music.chirp record @s
execute if score $out rng matches 2 as @a at @s run playsound game.music.far record @s
execute if score $out rng matches 3 as @a at @s run playsound game.music.mall record @s
execute if score $out rng matches 4 as @a at @s run playsound game.music.otherside record @s
execute if score $out rng matches 5 as @a at @s run playsound game.music.pigstep record @s
execute if score $out rng matches 6 as @a at @s run playsound game.music.strad record @s
execute if score $out rng matches 7 as @a at @s run playsound game.music.wait record @s
execute if score $out rng matches 8 as @a at @s run playsound game.music.ward record @s

#advancement display
function pudge:game/music/playlist/minecraft/display

#update last played variables
scoreboard players operation $LastPlayed8 music = $LastPlayed7 music
scoreboard players operation $LastPlayed7 music = $LastPlayed6 music
scoreboard players operation $LastPlayed6 music = $LastPlayed5 music
scoreboard players operation $LastPlayed5 music = $LastPlayed4 music
scoreboard players operation $LastPlayed4 music = $LastPlayed3 music
scoreboard players operation $LastPlayed3 music = $LastPlayed2 music
scoreboard players operation $LastPlayed2 music = $LastPlayed1 music
scoreboard players operation $LastPlayed1 music = $out rng

#schedule next song based on song selected
function pudge:game/music/playlist/minecraft/queue_next

#dont create infinite loop in generate function
scoreboard players set #Temp music 1

#enable song skipping
scoreboard players enable @a skip
scoreboard players set $SkipVotes music 0
function pudge:game/music/skip/get_needed_votes