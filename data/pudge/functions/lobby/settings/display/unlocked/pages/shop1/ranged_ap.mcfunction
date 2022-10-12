setblock 203 64 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Ranged Attack","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 307"}}',Text2:'{"text":"Power","color":"light_purple"}',Text3:'{"score":{"name":"$RangedAPCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $RangedAPCost shop = $RangedAPCost.Default shop run data merge block 203 64 -66 {Text3:'{"score":{"name":"$RangedAPCost","objective":"shop"},"color":"green"}'}
