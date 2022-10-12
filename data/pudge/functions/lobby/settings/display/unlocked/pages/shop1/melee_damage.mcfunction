setblock 203 65 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Hatchet Damage","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 303"}}',Text2:'',Text3:'{"score":{"name":"$MeleeDamageCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $MeleeDamageCost shop = $MeleeDamageCost.Default shop run data merge block 203 65 -66 {Text3:'{"score":{"name":"$MeleeDamageCost","objective":"shop"},"color":"green"}'}
