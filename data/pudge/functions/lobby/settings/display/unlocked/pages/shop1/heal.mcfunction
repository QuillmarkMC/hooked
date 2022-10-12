setblock 201 64 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Instant","color":"#FF4E4B","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 305"},"bold": true}',Text2:'{"text":"Health","color":"#FF4E4B","bold": true}',Text3:'{"score":{"name":"$HealCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HealCost shop = $HealCost.Default shop run data merge block 201 64 -66 {Text3:'{"score":{"name":"$HealCost","objective":"shop"},"color":"green"}'}
