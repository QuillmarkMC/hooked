#default page
#top row
setblock 199 66 -66 oak_wall_sign[facing=south]
setblock 200 66 -66 oak_wall_sign[facing=south]
setblock 201 66 -66 oak_wall_sign[facing=south]
setblock 202 66 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'',Text2:'{"text":"Page 5","color":"dark_green"}',Text3:'{"text":"Credits","color":"white"}',Text4:""}
setblock 203 66 -66 oak_wall_sign[facing=south]
setblock 204 66 -66 oak_wall_sign[facing=south]
setblock 205 66 -66 oak_wall_sign[facing=south]
#2nd row
setblock 199 65 -66 air
setblock 200 65 -66 player_wall_head[facing=south]{SkullOwner:{Name:"Strongis13"}}
setblock 201 65 -66 air
setblock 202 65 -66 air
setblock 203 65 -66 air
setblock 204 65 -66 player_wall_head[facing=south]{SkullOwner:{Name:"Soccby"}}
setblock 205 65 -66 air
#3rd row
setblock 199 64 -66 air
setblock 200 64 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Strongis13","color":"blue"}',Text2:'{"text":"Designer","color":"light_gray"}',Text3:'{"text":"Programming","color":"light_gray"}',Text4:'{"text":"Game Balance","color":"light_gray"}'}
setblock 201 64 -66 air
setblock 202 64 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"light_gray",Text1:'{"text":"Click here to","color":"white","bold": true}',Text2:'{"text":"watch this","color":"white","bold": true}',Text3:'{"text":"map\'s trailer!","color":"white","bold": true}',Text4:'{"text":"","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=Twai-14iz_I&list=PL7D-41CZ_KECQHe6bxTRFhKEUEnF6IYjl&index=2"}}'}
setblock 203 64 -66 air
setblock 204 64 -66 oak_wall_sign[facing=south]{Text1:'{"text":"Soccby","color":"blue"}',Text2:'{"text":"Map Builder","color":"light_gray"}',Text3:'{"text":"Game Balance","color":"light_gray"}',Text4:''}
setblock 205 64 -66 air
#bottom row (navigation)
function pudge:lobby/settings/display/unlocked/pages/page_selection/back
function pudge:lobby/settings/display/unlocked/pages/page_selection/page1
function pudge:lobby/settings/display/unlocked/pages/page_selection/page2
function pudge:lobby/settings/display/unlocked/pages/page_selection/page3
function pudge:lobby/settings/display/unlocked/pages/page_selection/page4
function pudge:lobby/settings/display/unlocked/pages/page_selection/page5
function pudge:lobby/settings/display/unlocked/pages/page_selection/forward