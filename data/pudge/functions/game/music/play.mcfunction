#stop all current songs in case of overlap
function pudge:game/music/stop_all

#play song based on rng
execute if score $out rng matches 0 as @a at @s run playsound game.music.sandstorm record @s
execute if score $out rng matches 1 as @a at @s run playsound game.music.sandstorm record @s
execute if score $out rng matches 2 as @a at @s run playsound game.music.sandstorm record @s
execute if score $out rng matches 3 as @a at @s run playsound game.music.sandstorm record @s

#advancement display
function pudge:game/music/display

#update last played variables
scoreboard players operation $LastPlayed3 music = $LastPlayed2 music
scoreboard players operation $LastPlayed2 music = $LastPlayed1 music
scoreboard players operation $LastPlayed1 music = $out rng

#schedule next song based on song selected
function pudge:game/music/queue_next

#dont create infinite loop in generate function
scoreboard players set #Temp music 1