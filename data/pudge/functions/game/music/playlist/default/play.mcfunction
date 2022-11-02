#stop all current songs in case of overlap
function pudge:game/music/playlist/default/stop_all

#play song based on rng
execute if score $out rng matches 0 as @a at @s run playsound pudge:game.music.sandstorm record @s
execute if score $out rng matches 1 as @a at @s run playsound pudge:game.music.positive record @s
execute if score $out rng matches 2 as @a at @s run playsound pudge:game.music.flame record @s
execute if score $out rng matches 3 as @a at @s run playsound pudge:game.music.rave_a record @s
execute if score $out rng matches 4 as @a at @s run playsound pudge:game.music.avast record @s
execute if score $out rng matches 5 as @a at @s run playsound pudge:game.music.megalovania record @s
execute if score $out rng matches 6 as @a at @s run playsound pudge:game.music.crypteque record @s
execute if score $out rng matches 7 as @a at @s run playsound pudge:game.music.dota record @s
execute if score $out rng matches 8 as @a at @s run playsound pudge:game.music.abandon_ship record @s
execute if score $out rng matches 9 as @a at @s run playsound pudge:game.music.all_night record @s
execute if score $out rng matches 10 as @a at @s run playsound pudge:game.music.can_you_feel_my_heart record @s
execute if score $out rng matches 11 as @a at @s run playsound pudge:game.music.crab_rave record @s
execute if score $out rng matches 12 as @a at @s run playsound pudge:game.music.elite_four record @s
execute if score $out rng matches 13 as @a at @s run playsound pudge:game.music.leviathan record @s
execute if score $out rng matches 14 as @a at @s run playsound pudge:game.music.space_invaders record @s
execute if score $out rng matches 15 as @a at @s run playsound pudge:game.music.bomberman record @s
execute if score $out rng matches 16 as @a at @s run playsound pudge:game.music.lamenting_city record @s
execute if score $out rng matches 17 as @a at @s run playsound pudge:game.music.brain_power record @s

#advancement display
function pudge:game/music/playlist/default/display

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
function pudge:game/music/playlist/default/queue_next

#dont create infinite loop in generate function
scoreboard players set #Temp music 1

#enable song skipping
scoreboard players enable @a skip
scoreboard players set $SkipVotes music 0
function pudge:game/music/skip/get_needed_votes