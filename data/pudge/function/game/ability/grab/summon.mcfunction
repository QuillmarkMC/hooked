data merge entity @s {Marker:true,Invisible:true,Tags:["grabHoldingMarker"]}
scoreboard players operation @s grabID = @a[tag=GrabbingPlayerTag,limit=1] entityid

ride @a[tag=InitialGrabMountTag,limit=1] mount @s