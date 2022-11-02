setblock 203 65 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Hatchet","color":"dark_red","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1303"},"bold": true}',Text2:'{"text":"Damage","color":"dark_red","bold": true}',Text3:'{"score":{"name":"$MeleeDamageCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $MeleeDamageCost shop = $MeleeDamageCost.Default shop run data merge block 203 65 -66 {Text3:'{"score":{"name":"$MeleeDamageCost","objective":"shop"},"color":"green"}'}
