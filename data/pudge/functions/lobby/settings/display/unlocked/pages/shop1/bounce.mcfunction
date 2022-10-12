setblock 202 65 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Ricochet","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 302"}}',Text2:'{"text":"Arrows","color":"light_purple"}',Text3:'{"score":{"name":"$BounceCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $BounceCost shop = $BounceCost.Default shop run data merge block 202 65 -66 {Text3:'{"score":{"name":"$BounceCost","objective":"shop"},"color":"green"}'}
