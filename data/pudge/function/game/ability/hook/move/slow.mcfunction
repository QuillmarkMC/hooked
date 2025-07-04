#execute as @e[type=armor_stand,tag=tempHookTag,limit=1] at @s facing entity @a[tag=tempHookTag,limit=1] feet run tp @s ^ ^ ^0.5 facing entity @a[tag=tempHookTag,limit=1]
execute as @e[type=armor_stand,tag=tempHookTag,limit=1] at @s facing entity @a[tag=tempHookTag,limit=1] feet run tp @s ^ ^ ^0.5
scoreboard players set #ColorTemp hookTimer 1