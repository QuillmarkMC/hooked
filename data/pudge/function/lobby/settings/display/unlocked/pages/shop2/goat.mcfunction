setblock 201 64 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"translate":"text.lobby.settings.signs.shop2.goat.1","color":"#A335EE","clickEvent":{"action":"run_command","value": "/trigger lobbysigns set 405"},"bold": true}', '{"translate":"text.lobby.settings.signs.shop2.goat.2","color":"#A335EE","bold": true}', '{"score":{"name":"$GoatCost","objective":"shop"},"color":"red"}', '{"translate":"text.lobby.settings.signs.gold","color":"gold"}']}}
execute if score $GoatCost shop = $GoatCost.Default shop run data modify block 201 64 -66 front_text.messages[2] set value '{"score":{"name":"$GoatCost","objective":"shop"},"color":"green"}'
