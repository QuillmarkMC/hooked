setblock 204 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"text":"Respawn","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1205"},"bold": true}', '{"text":"Delay","color":"light_purple","bold": true}', '{"score":{"name":"$RespawnDelaySeconds","objective":"lobbysigns"},"color":"red"}', '{"text":"seconds","color":"gold"}']}}
execute if score $RespawnDelay var = $RespawnDelay lobbysigns.default run data modify block 204 65 -66 front_text.messages[2] set value '{"score":{"name":"$RespawnDelaySeconds","objective":"lobbysigns"},"color":"green"}'