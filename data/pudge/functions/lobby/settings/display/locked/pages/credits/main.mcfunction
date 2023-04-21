#default page
#top row
setblock 199 66 -66 dark_oak_wall_sign[facing=south]
setblock 200 66 -66 dark_oak_wall_sign[facing=south]
setblock 201 66 -66 dark_oak_wall_sign[facing=south]
setblock 202 66 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'',Text2:'{"text":"Page 5","color":"dark_green"}',Text3:'{"text":"Credits","color":"white"}',Text4:""}
setblock 203 66 -66 dark_oak_wall_sign[facing=south]
setblock 204 66 -66 dark_oak_wall_sign[facing=south]
setblock 205 66 -66 dark_oak_wall_sign[facing=south]
#2nd row
setblock 199 65 -66 air
setblock 200 65 -66 player_wall_head[facing=south]{SkullOwner:{Name:"Strongis13"}}
setblock 201 65 -66 air
setblock 202 65 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"light_gray",Text1:'[{"text":"Click here ","color":"yellow"},{"text":"to","color":"white"}]',Text2:'{"text":"download the","color":"white"}',Text3:'{"text":"full map on","color":"white"}',Text4:'{"text":"Planet Minecraft!","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 501"},"color": "green"}'}
setblock 203 65 -66 air
setblock 204 65 -66 player_wall_head[facing=south]{SkullOwner:{Name:"Soccby"}}
setblock 205 65 -66 air
#3rd row
setblock 199 64 -66 air
setblock 200 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"white",Text1:'{"text":"Strongis13","color":"aqua"}',Text2:'{"text":"Programmer","color":"light_gray"}',Text3:'{"text":"Game Balance","color":"light_gray"}',Text4:''}
setblock 201 64 -66 air
setblock 202 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"light_gray",Text1:'[{"text":"Click here ","color":"yellow"},{"text":"to","color":"white"}]',Text2:'{"text":"watch this","color":"white"}',Text3:'{"text":"map\'s trailer!","color":"white"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 500"}}'}
setblock 203 64 -66 air
setblock 204 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"white",Text1:'{"text":"Soccby","color":"aqua"}',Text2:'{"text":"Builder","color":"light_gray"}',Text3:'{"text":"Game Balance","color":"light_gray"}',Text4:''}
setblock 205 64 -66 air
#bottom row (navigation)
function pudge:lobby/settings/display/locked/pages/page_selection/back
function pudge:lobby/settings/display/locked/pages/page_selection/page1
function pudge:lobby/settings/display/locked/pages/page_selection/page2
function pudge:lobby/settings/display/locked/pages/page_selection/page3
function pudge:lobby/settings/display/locked/pages/page_selection/page4
function pudge:lobby/settings/display/locked/pages/page_selection/page5
function pudge:lobby/settings/display/locked/pages/page_selection/forward