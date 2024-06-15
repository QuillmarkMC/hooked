execute if score #ColorTemp hookTimer matches 1 run particle dust{color:[1.0, 1.0, 1.0],scale:0.2} ~ ~ ~ 0 0 0 0 1 force
execute if score #ColorTemp hookTimer matches 2 run particle dust{color:[0.992, 0.757, 0.106],scale:0.2} ~ ~ ~ 0 0 0 0 1 force

execute unless entity @a[tag=tempHookTag,limit=1,distance=..2] facing entity @a[tag=tempHookTag,limit=1] eyes positioned ^ ^ ^.1 run function pudge:game/ability/hook/particles/raycast