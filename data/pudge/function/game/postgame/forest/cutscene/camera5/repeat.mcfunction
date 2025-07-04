scoreboard players add $Timer cutscene 1

execute as @e[type=armor_stand,tag=outroCam5,limit=1] at @s run tp @s ~0.15 ~ ~-0.15

execute if score $Timer cutscene matches 2 as @a run spectate
gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,tag=outroCam5,limit=1]

execute if score $Timer cutscene matches 5 run function pudge:game/postgame/game_stats/titles/title_thank

execute if score $Timer cutscene matches 90 run title @a times 20 50 20
execute if score $Timer cutscene matches 90 run title @a subtitle ""
execute if score $Timer cutscene matches 90 run title @a title {"text":"\uE006"}

execute unless score $Timer cutscene matches 100.. run schedule function pudge:game/postgame/forest/cutscene/camera5/repeat 1t
execute if score $Timer cutscene matches 100.. run function pudge:game/postgame/forest/cutscene/end_queue