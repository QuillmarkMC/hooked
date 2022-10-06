#default page
#top row
setblock 199 66 -66 air
setblock 200 66 -66 air
setblock 201 66 -66 air
setblock 202 66 -66 air
setblock 203 66 -66 air
setblock 204 66 -66 air
setblock 205 66 -66 air
#2nd row
setblock 199 65 -66 air
setblock 200 65 -66 air
setblock 201 65 -66 air
setblock 202 65 -66 air
setblock 203 65 -66 air
setblock 204 65 -66 air
setblock 205 65 -66 air
#3rd row
setblock 199 64 -66 air
setblock 200 64 -66 air
setblock 201 64 -66 air
setblock 202 64 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1"},"text": ""}',Text2:'{"text":"Start Game","color":"dark_green"}',Text3:'{"text":"[Right Click]","color":"white"}',Text4:""}
setblock 203 64 -66 air
setblock 204 64 -66 air
setblock 205 64 -66 air
#bottom row (navigation)
setblock 199 63 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 3"},"text": ""}',Text2:'{"text":"Previous Page","color":"dark_green"}',Text3:'{"text":"<-----","color":"white"}',Text4:""}
setblock 200 63 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 5"},"text": ""}',Text2:'{"text":"Go to page","color":"dark_green"}',Text3:'{"text":"General","color":"white"}',Text4:""}
#setblock 201 63 -66 air map selection
#setblock 202 63 -66 air shop
#setblock 203 63 -66 air effects
#setblock 204 63 -66 air 
setblock 205 63 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 4"},"text": ""}',Text2:'{"text":"Next Page","color":"dark_green"}',Text3:'{"text":"----->","color":"white"}',Text4:""}
