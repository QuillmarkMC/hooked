execute if score #ColorTemp hookTimer matches 1 run particle dust 1 1 1 0.2 ~ ~ ~ 0 0 0 0 1 force
execute if score #ColorTemp hookTimer matches 2 run particle dust 0.992 0.757 0.106 0.2 ~ ~ ~ 0 0 0 0 1 force
#particle dust 1 1 1 0.2 ~ ~ ~ ^ ^ ^.5 0 5 force
execute unless entity @a[tag=tempHookTag,limit=1,distance=..2] facing entity @a[tag=tempHookTag,limit=1] eyes positioned ^ ^ ^.1 run function pudge:game/ability/hook/particles/raycast