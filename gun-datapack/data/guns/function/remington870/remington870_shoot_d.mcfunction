


playsound entity.arrow.shoot master @a[distance=..10] ~ ~ ~


playsound minecraft:shotgun_shoot voice @s ~ ~ ~ 35


tag @s add owner
execute anchored eyes rotated as @s run summon arrow ^ ^-0.4 ^0.8 {Tags:["remington870_projectile"],item:{id:"minecraft:snow",count:1},damage:0.65d}
execute anchored eyes rotated as @s run summon arrow ^ ^-0.4 ^0.8 {Tags:["remington870_projectile"],item:{id:"minecraft:snow",count:1},damage:0.65d}
execute anchored eyes rotated as @s run summon arrow ^ ^-0.4 ^0.8 {Tags:["remington870_projectile"],item:{id:"minecraft:snow",count:1},damage:0.65d}
execute anchored eyes rotated as @s run summon arrow ^ ^-0.4 ^0.8 {Tags:["remington870_projectile"],item:{id:"minecraft:snow",count:1},damage:0.65d}
execute anchored eyes run particle minecraft:smoke ^-.6 ^-.2 ^1 0.1 0.1 0.1 0.01 13

execute as @e[type=arrow,tag=remington870_projectile,tag=!motion_added] at @s rotated as @p run function guns:remington870/remington870_apply_motion


#recoil
tp @s ~ ~ ~ ~ ~-3
