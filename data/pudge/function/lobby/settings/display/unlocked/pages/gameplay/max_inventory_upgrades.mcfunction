setblock 205 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"translate":"text.lobby.settings.signs.gameplay.upgrades.1","color":"light_purple","clickEvent":{"action":"run_command","value": "/trigger lobbysigns set 206"},"bold": true}', '{"translate":"text.lobby.settings.signs.gameplay.upgrades.2","color":"light_purple","bold": true}', '{"score":{"name":"$MaxInventoryUpgrades","objective":"var"},"color":"red"}', '""']}}
execute if score $MaxInventoryUpgrades var = $MaxInventoryUpgrades lobbysigns.default run data modify block 205 65 -66 front_text.messages[2] set value '{"score":{"name":"$MaxInventoryUpgrades","objective":"var"},"color":"green"}'
