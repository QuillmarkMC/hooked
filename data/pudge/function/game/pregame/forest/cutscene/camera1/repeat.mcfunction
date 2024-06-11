scoreboard players add $Timer cutscene 1

execute as @e[type=marker,tag=introCam1FacingTarget,limit=1] at @s run tp ^ ^ ^0.6
execute as @e[type=armor_stand,tag=introCam1,limit=1] at @s facing entity @e[type=marker,tag=introCam1TPTarget,limit=1] feet run tp @s ^ ^ ^0.6 facing entity @e[type=marker,tag=introCam1FacingTarget,limit=1] feet

execute if score $Timer cutscene matches 2 as @a run spectate
gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,tag=introCam1,limit=1]

execute if score $Timer cutscene matches 65 run title @a times 5 0 5
execute if score $Timer cutscene matches 65 run title @a title {"text":"\uE006"}

execute unless score $Timer cutscene matches 70.. run schedule function pudge:game/pregame/forest/cutscene/camera1/repeat 1t
execute if score $Timer cutscene matches 70.. run function pudge:game/pregame/forest/cutscene/camera2/begin