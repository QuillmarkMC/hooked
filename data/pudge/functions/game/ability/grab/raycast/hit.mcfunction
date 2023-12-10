execute if score $Debug var matches 1.. run say pudge:game/ability/grab/raycast/hit
scoreboard players set $Hit raycast 1
#dont let player start a grab if they themselves are grabbed or getting launched
scoreboard players set #TempSuccess raycast 1
execute if score @a[tag=raycasting,limit=1] grabID matches 1.. run scoreboard players set #TempSuccess raycast 0
execute if score @a[tag=raycasting,limit=1] launchID matches 1.. run scoreboard players set #TempSuccess raycast 0
execute if score @s grabID matches 1.. run scoreboard players set #TempSuccess raycast 0
execute if score @s launchID matches 1.. run scoreboard players set #TempSuccess raycast 0

execute if score #TempSuccess raycast matches 1 run function pudge:game/ability/grab/success
