setblock 199 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"translate":"text.lobby.settings.signs.gameplay.starting_gold.1","color":"light_purple","clickEvent":{"action":"run_command","value": "/trigger lobbysigns set 200"},"bold": true}', '{"translate":"text.lobby.settings.signs.gameplay.starting_gold.2","color":"light_purple","bold": true}', '{"score":{"name":"$StartingGold","objective":"gold"},"color":"red"}', '{"translate":"text.lobby.settings.signs.gold","color":"gold"}']}}
execute if score $StartingGold gold = $StartingGold lobbysigns.default run data modify block 199 65 -66 front_text.messages[2] set value '{"score":{"name":"$StartingGold","objective":"gold"},"color":"green"}'
