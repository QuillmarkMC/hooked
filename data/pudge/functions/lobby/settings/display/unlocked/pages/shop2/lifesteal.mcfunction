setblock 203 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Lifestealing","color":"#911919","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 404"},"bold": true}',Text2:'',Text3:'{"score":{"name":"$LifestealCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $LifestealCost shop = $LifestealCost.Default shop run data merge block 203 65 -66 {Text3:'{"score":{"name":"$LifestealCost","objective":"shop"},"color":"green"}'}
