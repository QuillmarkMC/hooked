setblock 200 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"translate":"text.lobby.settings.signs.shop2.creeper.1","color":"dark_green","clickEvent":{"action":"run_command","value": "/trigger lobbysigns set 400"},"bold": true}', '{"translate":"text.lobby.settings.signs.shop2.creeper.2","color":"dark_green","bold": true}', '{"score":{"name":"$CreeperCost","objective":"shop"},"color":"red"}', '{"translate":"text.lobby.settings.signs.gold","color":"gold"}']}}
execute if score $CreeperCost shop = $CreeperCost.Default shop run data modify block 200 65 -66 front_text.messages[2] set value '{"score":{"name":"$CreeperCost","objective":"shop"},"color":"green"}'
