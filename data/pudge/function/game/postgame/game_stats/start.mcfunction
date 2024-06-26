#"reset" players
execute as @a run function pudge:game/postgame/game_stats/reset_player_lite
#end deathmatch
execute if score $HellActive river matches 1.. run function pudge:game/maps/forest/river/power/hell/end
#play music based on team
function pudge:game/music/stop_all
schedule clear pudge:game/music/generate
execute unless score $RealmsRelease var matches 1 if score $Winner cutscene matches 1 as @a[team=blue] at @s run playsound pudge:game.music.victory record @s
execute unless score $RealmsRelease var matches 1 if score $Winner cutscene matches 1 as @a[team=red] at @s run playsound pudge:game.music.defeat record @s
execute unless score $RealmsRelease var matches 1 if score $Winner cutscene matches 2 as @a[team=blue] at @s run playsound pudge:game.music.defeat record @s
execute unless score $RealmsRelease var matches 1 if score $Winner cutscene matches 2 as @a[team=red] at @s run playsound pudge:game.music.victory record @s
execute unless score $RealmsRelease var matches 1 if score $Winner cutscene matches 3 as @a[team=!spectator] at @s run playsound pudge:game.music.defeat record @s
execute unless score $RealmsRelease var matches 1 as @a[team=spectator] at @s run playsound pudge:game.music.victory record @s
execute if score $RealmsRelease var matches 1 if score $Winner cutscene matches 1 as @a[team=blue] at @s run playsound pudge:game.music.victory_realms record @s
execute if score $RealmsRelease var matches 1 if score $Winner cutscene matches 1 as @a[team=red] at @s run playsound pudge:game.music.defeat_realms record @s
execute if score $RealmsRelease var matches 1 if score $Winner cutscene matches 2 as @a[team=blue] at @s run playsound pudge:game.music.defeat_realms record @s
execute if score $RealmsRelease var matches 1 if score $Winner cutscene matches 2 as @a[team=red] at @s run playsound pudge:game.music.victory_realms record @s
execute if score $RealmsRelease var matches 1 if score $Winner cutscene matches 3 as @a[team=!spectator] at @s run playsound pudge:game.music.defeat_realms record @s
execute if score $RealmsRelease var matches 1 as @a[team=spectator] at @s run playsound pudge:game.music.victory_realms record @s
#queue /title to display after black screen ends
schedule function pudge:game/postgame/game_stats/titles/title_team 30t
#start cutscene
function pudge:game/postgame/forest/cutscene/start
#queue stat display in chat
schedule function pudge:game/postgame/game_stats/stats/queue_red 60t
#hide bossbar
bossbar set score players
#stop in progress surrender votes
schedule clear pudge:game/surrender/red/conclude
schedule clear pudge:game/surrender/blue/conclude
schedule clear pudge:game/surrender/red/enable
schedule clear pudge:game/surrender/blue/enable