setblock 199 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"text":"Starting","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1200"},"bold": true}', '{"text":"Gold","color":"light_purple","bold": true}', '{"score":{"name":"$StartingGold","objective":"gold"},"color":"red"}', '{"text":"gold","color":"gold"}']}}
execute if score $StartingGold gold = $StartingGold lobbysigns.default run data modify block 199 65 -66 front_text.messages[2] set value '{"score":{"name":"$StartingGold","objective":"gold"},"color":"green"}'