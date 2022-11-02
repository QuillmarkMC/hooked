setblock 201 65 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Stick of","color":"#C69B6D","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1402"},"bold": true}',Text2:'{"text":"Suffering","color":"#C69B6D","bold": true}',Text3:'{"score":{"name":"$KnockbackCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $KnockbackCost shop = $KnockbackCost.Default shop run data merge block 201 65 -66 {Text3:'{"score":{"name":"$KnockbackCost","objective":"shop"},"color":"green"}'}
