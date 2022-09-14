scoreboard players add $Timer cutscene 1

execute as @e[type=armor_stand,tag=introCam2,limit=1] at @s positioned ^0.2 ^ ^ positioned ~ ~0.45 ~ run tp @s ~ ~ ~ facing entity @e[type=marker,tag=introCam2FacingTarget,limit=1] feet

gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,tag=introCam2,limit=1]

execute if score $Timer cutscene matches 52 run title @a times 5 0 5
execute if score $Timer cutscene matches 52 run title @a title {"text":"\uE006"}

execute unless score $Timer cutscene matches 57.. run schedule function pudge:game/pregame/forest/cutscene/camera2/repeat 1t
execute if score $Timer cutscene matches 57.. run function pudge:game/pregame/forest/cutscene/camera3/begin