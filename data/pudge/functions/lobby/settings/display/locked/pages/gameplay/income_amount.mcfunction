setblock 202 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"text":"Income","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1203"},"bold": true}', '{"text":"Amount","color":"light_purple","bold": true}', '{"score":{"name":"$IncomeAmount","objective":"gold"},"color":"red"}', '{"text":"gold","color":"gold"}']}}
execute if score $IncomeAmount gold = $IncomeAmount lobbysigns.default run data modify block 202 65 -66 front_text.messages[2] set value '{"score":{"name":"$IncomeAmount","objective":"gold"},"color":"green"}'
