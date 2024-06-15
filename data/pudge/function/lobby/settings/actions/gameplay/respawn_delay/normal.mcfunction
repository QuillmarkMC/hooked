scoreboard players add $RespawnDelay.State lobbysigns 1
execute unless score $RespawnDelay.State lobbysigns matches 0..4 run scoreboard players set $RespawnDelay.State lobbysigns 0
execute if score $RespawnDelay.State lobbysigns matches 0 run scoreboard players set $RespawnDelaySeconds lobbysigns 5
execute if score $RespawnDelay.State lobbysigns matches 1 run scoreboard players set $RespawnDelaySeconds lobbysigns 3
execute if score $RespawnDelay.State lobbysigns matches 2 run scoreboard players set $RespawnDelaySeconds lobbysigns 1
execute if score $RespawnDelay.State lobbysigns matches 3 run scoreboard players set $RespawnDelaySeconds lobbysigns 10
execute if score $RespawnDelay.State lobbysigns matches 4 run scoreboard players set $RespawnDelaySeconds lobbysigns 8

function pudge:lobby/settings/actions/gameplay/respawn_delay/convert
