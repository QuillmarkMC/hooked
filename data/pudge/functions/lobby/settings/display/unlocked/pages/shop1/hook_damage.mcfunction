setblock 201 65 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Hookshot Damage","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 301"}}',Text2:'',Text3:'{"score":{"name":"$HookDamageCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HookDamageCost shop = $HookDamageCost.Default shop run data merge block 201 65 -66 {Text3:'{"score":{"name":"$HookDamageCost","objective":"shop"},"color":"green"}'}
