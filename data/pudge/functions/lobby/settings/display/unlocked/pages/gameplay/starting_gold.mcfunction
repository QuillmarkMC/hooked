setblock 199 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Starting","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 200"},"bold": true}',Text2:'{"text":"Gold","color":"light_purple","bold": true}',Text3:'{"score":{"name":"$StartingGold","objective":"gold"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $StartingGold gold = $StartingGold lobbysigns.default run data merge block 199 65 -66 {Text3:'{"score":{"name":"$StartingGold","objective":"gold"},"color":"green"}'}
