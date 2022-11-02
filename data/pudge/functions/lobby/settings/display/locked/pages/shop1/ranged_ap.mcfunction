setblock 203 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Ranged Attack","color":"#8000E5","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1307"},"bold": true}',Text2:'{"text":"Power","color":"#8000E5","bold": true}',Text3:'{"score":{"name":"$RangedAPCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $RangedAPCost shop = $RangedAPCost.Default shop run data merge block 203 64 -66 {Text3:'{"score":{"name":"$RangedAPCost","objective":"shop"},"color":"green"}'}
