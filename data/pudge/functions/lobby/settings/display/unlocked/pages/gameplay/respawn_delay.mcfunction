setblock 204 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Respawn","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 205"},"bold": true}',Text2:'{"text":"Delay","color":"light_purple","bold": true}',Text3:'{"score":{"name":"$RespawnDelaySeconds","objective":"lobbysigns"},"color":"red"}',Text4:'{"text":"seconds","color":"gold"}'}

execute if score $RespawnDelay var = $RespawnDelay lobbysigns.default run data merge block 204 65 -66 {Text3:'{"score":{"name":"$RespawnDelaySeconds","objective":"lobbysigns"},"color":"green"}'}