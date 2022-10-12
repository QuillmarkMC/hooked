setblock 201 64 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Instant Health","#FF4E4B":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 305"},"bold": true}',Text2:'',Text3:'{"score":{"name":"$HealCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HealCost shop = $HealCost.Default shop run data merge block 201 64 -66 {Text3:'{"score":{"name":"$HealCost","objective":"shop"},"color":"green"}'}
