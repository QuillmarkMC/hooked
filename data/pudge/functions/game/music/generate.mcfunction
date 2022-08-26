#debug message
execute if score $Debug var matches 1.. run say game/music/generate.mcfunction
#randomly pick a tip to display
scoreboard players set #Temp music 0
#rng
scoreboard players set $max rng 8
function pudge:general/rng/rand

#dont play song if it was one of the last 3 songs played
execute unless score $out rng = $LastPlayed1 music unless score $out rng = $LastPlayed2 music unless score $out rng = $LastPlayed3 music run function pudge:game/music/play
execute if score $out rng = $LastPlayed1 music unless score #Temp music matches 1.. run function pudge:game/music/generate
execute if score $out rng = $LastPlayed2 music unless score #Temp music matches 1.. run function pudge:game/music/generate
execute if score $out rng = $LastPlayed3 music unless score #Temp music matches 1.. run function pudge:game/music/generate