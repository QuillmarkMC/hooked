setblock 202 64 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"text":"Gyro-Balanced","color":"#33FFB8","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1406"},"bold": true}', '{"text":"Retraction Coils","color":"#33FFB8","bold": false}', '{"score":{"name":"$RetractCost","objective":"shop"},"color":"red"}', '{"text":"gold","color":"gold"}']}}
execute if score $RetractCost shop = $RetractCost.Default shop run data modify block 202 64 -66 front_text.messages[2] set value '{"score":{"name":"$RetractCost","objective":"shop"},"color":"green"}'