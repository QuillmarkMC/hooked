data merge entity @s {Marker:true,Invisible:true,Tags:["grabHoldingMarker"]}
scoreboard players operation @s grabID = @a[tag=raycasting,limit=1] entityid

ride @a[tag=InitialGrabMountTag] mount @s