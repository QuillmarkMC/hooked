execute unless score $RealmsRelease var matches 1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "light_purple","bold": true},{"text":"Click "},{"text":"here","bold": true,"underlined": true,"color": "yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","italic":true,"color":"yellow"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/hook-line-and-creeper/"}},{"text":" to download the map from Planet Minecraft!"}]
execute if score $RealmsRelease var matches 1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "light_purple","bold": true},{"text":"This map was modified for it's Minecraft Realms release. Click "},{"text":"here","bold": true,"underlined": true,"color": "yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","italic":true,"color":"yellow"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/hook-line-and-creeper/"}},{"text":" to download the original map from Planet Minecraft!"}]