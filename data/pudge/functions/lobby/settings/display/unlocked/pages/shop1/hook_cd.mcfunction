setblock 200 65 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Hookshot Cooldown","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 300"}}',Text2:'',Text3:'{"score":{"name":"$HookCDCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HookCDCost shop = $HookCDCost.Default shop run data merge block 200 65 -66 {Text3:'{"score":{"name":"$HookCDCost","objective":"shop"},"color":"green"}'}
