setblock 205 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Max Unique","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 206"},"bold": true}',Text2:'{"text":"Abilities","color":"light_purple","bold": true}',Text3:'{"score":{"name":"$MaxInventoryUpgrades","objective":"var"},"color":"red"}',Text4:''}

execute if score $MaxInventoryUpgrades var = $MaxInventoryUpgrades lobbysigns.default run data merge block 205 65 -66 {Text3:'{"score":{"name":"$MaxInventoryUpgrades","objective":"var"},"color":"green"}'}
