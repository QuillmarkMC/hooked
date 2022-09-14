scoreboard players add $Timer cutscene 1

execute as @e[type=marker,tag=introCam3FacingTarget,limit=1] at @s run tp ~ ~ ~-0.4
execute as @e[type=armor_stand,tag=introCam3,limit=1] at @s run tp @s ~ ~ ~0.4 facing entity @e[type=marker,tag=introCam3FacingTarget,limit=1] feet

gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,tag=introCam3,limit=1]

execute if score $Timer cutscene matches 51 run title @a times 5 0 5
execute if score $Timer cutscene matches 51 run title @a title {"text":"\uE006"}

execute unless score $Timer cutscene matches 56.. run schedule function pudge:game/pregame/forest/cutscene/camera3/repeat 1t
execute if score $Timer cutscene matches 56.. run function pudge:game/pregame/forest/cutscene/camera4/begin