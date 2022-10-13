setblock 200 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Base Kill","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 201"},"bold": true}',Text2:'{"text":"Reward","color":"light_purple","bold": true}',Text3:'{"score":{"name":"$BaseBounty","objective":"var"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $BaseBounty gold = $BaseBounty lobbysigns.default run data merge block 200 65 -66 {Text3:'{"score":{"name":"$BaseBounty","objective":"var"},"color":"green"}'}
