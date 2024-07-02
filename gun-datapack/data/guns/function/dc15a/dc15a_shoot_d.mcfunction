
execute store result score @s rotation_x run data get entity shosancold Rotation[0]
execute store result score @s rotation_y run data get entity shosancold Rotation[1]


playsound entity.arrow.shoot master @a[distance=..10] ~ ~ ~


playsound minecraft:dc15a voice @s ~ ~ ~ 35

execute anchored eyes run summon arrow ^ ^-0.4 ^0.8 {Tags:["dc15a_projectile"],item:{id:"minecraft:snow",count:1},damage:0.75d}

execute as @e[type=arrow,tag=dc15a_projectile,tag=!motion_added] at @s rotated as @p run function guns:dc15a/dc15a_apply_motion

tp @s ~ ~ ~ ~ ~-1


