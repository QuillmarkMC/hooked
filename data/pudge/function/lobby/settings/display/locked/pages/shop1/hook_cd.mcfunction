setblock 200 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"translate":"text.lobby.settings.signs.shop1.hook_cd.1","color":"yellow","clickEvent":{"action":"run_command","value": "/trigger lobbysigns set 1300"},"bold": true}', '{"translate":"text.lobby.settings.signs.shop1.hook_cd.2","color":"yellow","bold": true}', '{"score":{"name":"$HookCDCost","objective":"shop"},"color":"red"}', '{"translate":"text.lobby.settings.signs.gold","color":"gold"}']}}
execute if score $HookCDCost shop = $HookCDCost.Default shop run data modify block 200 65 -66 front_text.messages[2] set value '{"score":{"name":"$HookCDCost","objective":"shop"},"color":"green"}'
