#stop all current songs in case of overlap
function pudge:game/music/playlist/eurobeat/stop_all

#play song based on rng
execute if score $out rng matches 0 as @a at @s run playsound game.music.perfect_hero record @s
execute if score $out rng matches 1 as @a at @s run playsound game.music.adrenaline record @s
execute if score $out rng matches 2 as @a at @s run playsound game.music.all_over_me record @s
execute if score $out rng matches 3 as @a at @s run playsound game.music.because_of_you record @s
execute if score $out rng matches 4 as @a at @s run playsound game.music.deja_vu record @s
execute if score $out rng matches 5 as @a at @s run playsound game.music.all_star record @s
execute if score $out rng matches 6 as @a at @s run playsound game.music.gas_gas_gas record @s
execute if score $out rng matches 7 as @a at @s run playsound game.music.wont_fall_apart record @s
execute if score $out rng matches 8 as @a at @s run playsound game.music.kickstart_my_heart record @s
execute if score $out rng matches 9 as @a at @s run playsound game.music.night_of_fire record @s
execute if score $out rng matches 10 as @a at @s run playsound game.music.nitrofire record @s
execute if score $out rng matches 11 as @a at @s run playsound game.music.sleep_in_tokyo record @s
execute if score $out rng matches 12 as @a at @s run playsound game.music.rebel_yell record @s
execute if score $out rng matches 13 as @a at @s run playsound game.music.remember_me record @s
execute if score $out rng matches 14 as @a at @s run playsound game.music.revenge record @s
execute if score $out rng matches 15 as @a at @s run playsound game.music.running_in_the_90s record @s
execute if score $out rng matches 16 as @a at @s run playsound game.music.race_of_the_night record @s
execute if score $out rng matches 17 as @a at @s run playsound game.music.the_top record @s
execute if score $out rng matches 18 as @a at @s run playsound game.music.you_give_love_a_bad_name record @s
execute if score $out rng matches 19 as @a at @s run playsound game.music.gonna_go_far_kid record @s

#advancement display
function pudge:game/music/playlist/eurobeat/display

#update last played variables
scoreboard players operation $LastPlayed10 music = $LastPlayed9 music
scoreboard players operation $LastPlayed9 music = $LastPlayed8 music
scoreboard players operation $LastPlayed8 music = $LastPlayed7 music
scoreboard players operation $LastPlayed7 music = $LastPlayed6 music
scoreboard players operation $LastPlayed6 music = $LastPlayed5 music
scoreboard players operation $LastPlayed5 music = $LastPlayed4 music
scoreboard players operation $LastPlayed4 music = $LastPlayed3 music
scoreboard players operation $LastPlayed3 music = $LastPlayed2 music
scoreboard players operation $LastPlayed2 music = $LastPlayed1 music
scoreboard players operation $LastPlayed1 music = $out rng

#schedule next song based on song selected
function pudge:game/music/playlist/eurobeat/queue_next

#dont create infinite loop in generate function
scoreboard players set #Temp music 1

#enable song skipping
scoreboard players enable @a skip
scoreboard players set $SkipVotes music 0
function pudge:game/music/skip/get_needed_votes