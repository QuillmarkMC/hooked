#default
execute if score $Soundtrack music matches 0 run function pudge:game/music/playlist/default/stop_all
#minecraft
#
#eurobeat
execute if score $Soundtrack music matches 2 run function pudge:game/music/playlist/eurobeat/stop_all

scoreboard players reset @a skip