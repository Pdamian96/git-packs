#

#put gun back in players inventory

execute as @e[type=item,nbt={Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{gun:1}}}}] run function guns:returnitem
execute as @a[scores={reloads=1}] run function guns:reload_registry

# smoke grenades logic

#Frag grenade logicLogic
execute as @e[type=tnt,nbt={Tags:["frag"]}] run function guns:grenades/frag_grenade

execute as @e[type=tnt,nbt={Tags:["smoke"]}] run function guns:grenades/smoke_grenade

execute as @e[type=tnt,nbt={Tags:["impact"]}] run function guns:grenades/impact_grenade



#kills all tnts right before they explode
execute as @e[type=tnt] if entity @s[nbt={fuse:1s}] run kill @s


