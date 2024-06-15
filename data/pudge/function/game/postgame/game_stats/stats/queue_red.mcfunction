execute as @r[team=red,tag=isGamer,tag=!statsDisplay] run function pudge:game/postgame/game_stats/stats/display

execute store result score $RemainingStats cutscene if entity @a[tag=isGamer,tag=!statsDisplay,team=red]
execute if score $RemainingStats cutscene matches 1.. run schedule function pudge:game/postgame/game_stats/stats/queue_red 16t
execute if score $RemainingStats cutscene matches ..0 run schedule function pudge:game/postgame/game_stats/stats/queue_blue 16t