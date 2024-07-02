
execute store result score @s rotation_x run data get entity shosancold Rotation[0]
execute store result score @s rotation_y run data get entity shosancold Rotation[1]


playsound entity.arrow.shoot master @a[distance=..10] ~ ~ ~



playsound minecraft:mp40 voice @s ~ ~ ~ 35 2

execute anchored eyes rotated as @s run summon arrow ^ ^-0.4 ^0.8 {Tags:["mp9_projectile"],item:{id:"minecraft:snow",count:1},damage:0.25d}
execute anchored eyes run particle minecraft:smoke ^-.6 ^-.2 ^1 0.1 0.1 0.1 0.01 13

execute as @e[type=arrow,tag=mp9_projectile,tag=!motion_added] at @s rotated as @p run function guns:mp9/mp9_apply_motion


#recoil
tp @s ~ ~ ~ ~ ~-.5