setblock 202 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Speed","color":"#7ECAFF","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1306"},"bold": true}',Text2:'',Text3:'{"score":{"name":"$HasteCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $HasteCost shop = $HasteCost.Default shop run data merge block 202 64 -66 {Text3:'{"score":{"name":"$HasteCost","objective":"shop"},"color":"green"}'}
