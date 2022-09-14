scoreboard players add $Timer cutscene 1

execute as @e[type=armor_stand,tag=introCam2,limit=1] at @s positioned ^0.1 ^ ^ positioned ~ ~0.55 ~ run tp @s ~ ~ ~ facing entity @e[type=marker,tag=introCam2FacingTarget,limit=1] feet

gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,tag=introCam2,limit=1]

execute unless score $Timer cutscene matches 57.. run schedule function pudge:game/pregame/forest/cutscene/camera2/repeat 1t
execute if score $Timer cutscene matches 57.. run function pudge:game/pregame/forest/cutscene/camera3/begin