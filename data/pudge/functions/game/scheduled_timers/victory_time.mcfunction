#count down seconds of game length, end when time hits 0
execute store result bossbar score value run scoreboard players remove $TimeLeftSeconds var 1
function pudge:game/bossbar/update
execute if score $TimeLeftSeconds var matches ..0 run function pudge:game/postgame/early_end/determine_win
execute unless score $Winner cutscene matches 1.. run schedule function pudge:game/scheduled_timers/victory_time 1s