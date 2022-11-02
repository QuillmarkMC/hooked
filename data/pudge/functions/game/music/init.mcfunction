#default
execute if score $Soundtrack music matches 0 run function pudge:game/music/playlist/default/generate
#minecraft
execute if score $Soundtrack music matches 1 run function pudge:game/music/playlist/minecraft/generate
#eurobeat
execute if score $Soundtrack music matches 2 run function pudge:game/music/playlist/eurobeat/generate