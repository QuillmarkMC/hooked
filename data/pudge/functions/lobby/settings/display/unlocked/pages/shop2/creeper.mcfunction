setblock 199 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Throwable","color":"dark_green","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 400"},"bold": true}',Text2:'{"text":"Creeper","color":"dark_green","bold": true}',Text3:'{"score":{"name":"$CreeperCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $CreeperCost shop = $CreeperCost.Default shop run data merge block 199 65 -66 {Text3:'{"score":{"name":"$CreeperCost","objective":"shop"},"color":"green"}'}
