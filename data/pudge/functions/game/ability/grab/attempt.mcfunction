tag @s add raycasting
scoreboard players set $Hit raycast 0
scoreboard players set $Distance raycast 0
function pudge:game/ability/grab/raycast/cast
tag @s remove raycasting