setblock 203 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"translate":"text.lobby.settings.signs.gameplay.income_cycle.1","color":"light_purple","clickEvent":{"action":"run_command","value": "/trigger lobbysigns set 204"},"bold": true}', '{"translate":"text.lobby.settings.signs.gameplay.income_cycle.2","color":"light_purple","bold": true}', '{"score":{"name":"$IncomeCycleSeconds","objective":"lobbysigns"},"color":"red"}', '{"translate":"text.lobby.settings.signs.seconds","color":"gold"}']}}
execute if score $IncomeCycle gold = $IncomeCycle lobbysigns.default run data modify block 203 65 -66 front_text.messages[2] set value '{"score":{"name":"$IncomeCycleSeconds","objective":"lobbysigns"},"color":"green"}'
