#debug message
execute if score $Debug var matches 1.. run say pudge:game/music/generate
#randomly pick a tip to display
scoreboard players set #Temp music 0
#rng
scoreboard players set $max rng 9
function pudge:general/rng/rand

#dont play song if it was one of the last 10 songs played
execute unless score $out rng = $LastPlayed1 music unless score $out rng = $LastPlayed2 music unless score $out rng = $LastPlayed3 music unless score $out rng = $LastPlayed4 music unless score $out rng = $LastPlayed5 music unless score $out rng = $LastPlayed6 music unless score $out rng = $LastPlayed7 music unless score $out rng = $LastPlayed8 music run function pudge:game/music/playlist/minecraft/play
execute if score $out rng = $LastPlayed1 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate
execute if score $out rng = $LastPlayed2 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate
execute if score $out rng = $LastPlayed3 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate
execute if score $out rng = $LastPlayed4 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate
execute if score $out rng = $LastPlayed5 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate
execute if score $out rng = $LastPlayed6 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate
execute if score $out rng = $LastPlayed7 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate
execute if score $out rng = $LastPlayed8 music unless score #Temp music matches 1.. run function pudge:game/music/playlist/minecraft/generate