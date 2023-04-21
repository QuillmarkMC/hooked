execute at @s summon marker run tag @s add TempBorderMarkerTPTag
execute as @e[type=marker,tag=TempBorderMarkerTPTag,limit=1] at @s facing entity @e[type=marker,tag=gameSpectatorSpawn,limit=1] feet run tp @s ^ ^ ^2
execute at @e[type=marker,tag=TempBorderMarkerTPTag,limit=1] rotated as @s run tp @s ~ ~ ~ ~ ~
kill @e[type=marker,tag=TempBorderMarkerTPTag,limit=1]
