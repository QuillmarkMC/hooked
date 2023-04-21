setblock 202 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Gyro-Balanced","color":"#33FFB8","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1406"},"bold": true}',Text2:'{"text":"Retraction Coils","color":"#33FFB8","bold": false}',Text3:'{"score":{"name":"$RetractCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $RetractCost shop = $RetractCost.Default shop run data merge block 202 64 -66 {Text3:'{"score":{"name":"$RetractCost","objective":"shop"},"color":"green"}'}
