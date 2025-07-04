scoreboard players add $Timer cutscene 1

execute as @e[type=armor_stand,tag=outroCam2,limit=1] at @s run tp @s ^ ^ ^0.02

execute if score $Timer cutscene matches 2 as @a run spectate
gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,tag=outroCam2,limit=1]

execute if score $Timer cutscene matches 5 run function pudge:game/postgame/game_stats/titles/title_team

execute if score $Timer cutscene matches 135 run title @a times 5 0 5
execute if score $Timer cutscene matches 135 run title @a subtitle ""
execute if score $Timer cutscene matches 135 run title @a title {"text":"\uE006"}

execute unless score $Timer cutscene matches 140.. run schedule function pudge:game/postgame/forest/cutscene/camera2/repeat 1t
execute if score $Timer cutscene matches 140.. run function pudge:game/postgame/forest/cutscene/camera3/begin