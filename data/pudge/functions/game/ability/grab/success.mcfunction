#called from pudge:game/ability/grab/raycast/hit
# @s = player to be grabbed
# @a[tag=raycasting] = player who is grabbing

scoreboard players operation @s grabID = @a[tag=raycasting,limit=1] entityid
tag @s add InitialGrabMountTag
execute at @a[tag=raycasting,limit=1] summon armor_stand ~ ~2 ~ run function pudge:game/ability/grab/summon
tag @s remove InitialGrabMountTag

tag @s add PreventGrab
tag @a[tag=raycasting,limit=1] add holdingPlayer
advancement grant @s only pudge:inv_change
