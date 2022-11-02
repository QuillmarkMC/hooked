setblock 200 65 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Hookshot","color":"yellow","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1300"},"bold": true}',Text2:'{"text":"Cooldown","color":"yellow","bold": true}',Text3:'{"score":{"name":"$HookCDCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HookCDCost shop = $HookCDCost.Default shop run data merge block 200 65 -66 {Text3:'{"score":{"name":"$HookCDCost","objective":"shop"},"color":"green"}'}
