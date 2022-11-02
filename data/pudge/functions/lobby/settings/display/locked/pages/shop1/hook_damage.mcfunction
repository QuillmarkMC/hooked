setblock 201 65 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Hookshot","color":"dark_red","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1301"},"bold": true}',Text2:'{"text":"Damage","color":"dark_red","bold": true}',Text3:'{"score":{"name":"$HookDamageCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HookDamageCost shop = $HookDamageCost.Default shop run data merge block 201 65 -66 {Text3:'{"score":{"name":"$HookDamageCost","objective":"shop"},"color":"green"}'}
