setblock 201 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"text":"Friendly Fire","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1202"},"bold": true}', '{"text":"Punishment","color":"light_purple","bold": true}', '{"score":{"name":"$TeamkillPunishment","objective":"gold"},"color":"red"}', '{"text":"gold","color":"gold"}']}}
execute if score $TeamkillPunishment gold = $TeamkillPunishment lobbysigns.default run data modify block 201 65 -66 front_text.messages[2] set value '{"score":{"name":"$TeamkillPunishment","objective":"gold"},"color":"green"}'
