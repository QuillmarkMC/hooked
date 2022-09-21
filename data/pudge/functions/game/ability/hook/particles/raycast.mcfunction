particle dust 1 1 1 0.2 ~ ~ ~ 0 0 0 0 1 force
#particle dust 1 1 1 0.2 ~ ~ ~ ^ ^ ^.5 0 5 force
execute unless entity @a[tag=tempHookTag,limit=1,distance=..2] facing entity @a[tag=tempHookTag,limit=1] eyes positioned ^ ^ ^.1 run function pudge:game/ability/hook/particles/raycast