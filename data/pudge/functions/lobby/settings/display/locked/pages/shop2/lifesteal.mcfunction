setblock 204 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"text":"Lifestealing","color":"#911919","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1404"},"bold": true}', '""', '{"score":{"name":"$LifestealCost","objective":"shop"},"color":"red"}', '{"text":"gold","color":"gold"}']}}
execute if score $LifestealCost shop = $LifestealCost.Default shop run data modify block 204 65 -66 front_text.messages[2] set value '{"score":{"name":"$LifestealCost","objective":"shop"},"color":"green"}'
