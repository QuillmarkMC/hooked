#particles used to debug the path of the ray
execute if score $Debug var matches 1.. run particle dust 0.992 0 0.91 1 ~ ~ ~ 0 0 0 0 1 force
execute if score $Debug var matches 1.. run say pudge:game/ability/grab/raycast/cast

execute if score $Hit raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!raycasting,dx=0,sort=nearest,limit=1] run function pudge:game/ability/grab/raycast/check
execute unless block ~ ~ ~ #pudge:empty run scoreboard players set $Hit raycast 1
scoreboard players add $Distance raycast 1
execute if score $Hit raycast matches 0 if score $Distance raycast <= $GrabRange abilityVar positioned ^ ^ ^0.1 run function pudge:game/ability/grab/raycast/cast