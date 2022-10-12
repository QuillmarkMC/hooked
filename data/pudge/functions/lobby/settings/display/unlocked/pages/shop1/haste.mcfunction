setblock 201 64 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Speed","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 306"}}',Text2:'',Text3:'{"score":{"name":"$HasteCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HasteCost shop = $HasteCost.Default shop run data merge block 201 64 -66 {Text3:'{"score":{"name":"$HasteCost","objective":"shop"},"color":"green"}'}
