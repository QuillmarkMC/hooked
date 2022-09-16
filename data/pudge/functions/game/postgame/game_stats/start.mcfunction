#"reset" players
execute as @a run function pudge:game/postgame/game_stats/reset_player_lite
#play music based on team
function pudge:game/music/stop_all
schedule clear pudge:game/music/generate
execute if score $Winner cutscene matches 1 as @a[team=blue] at @s run playsound game.music.victory ambient @s
execute if score $Winner cutscene matches 1 as @a[team=red] at @s run playsound game.music.defeat ambient @s
execute if score $Winner cutscene matches 2 as @a[team=blue] at @s run playsound game.music.defeat ambient @s
execute if score $Winner cutscene matches 2 as @a[team=red] at @s run playsound game.music.victory ambient @s
#queue /title to display after black screen ends
schedule function pudge:game/postgame/game_stats/titles/title_team 30t
#start cutscene
function pudge:game/postgame/forest/cutscene/start
#queue stat display in chat
schedule function pudge:game/postgame/game_stats/stats/queue_red 60t