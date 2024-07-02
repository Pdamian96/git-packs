
execute store result score @s rotation_x run data get entity shosancold Rotation[0]
execute store result score @s rotation_y run data get entity shosancold Rotation[1]


playsound entity.arrow.shoot master @a[distance=..10] ~ ~ ~


playsound minecraft:deagle_shoot voice @s ~ ~ ~ 35


execute anchored eyes rotated as @s run summon arrow ^ ^-0.4 ^0.8 {Tags:["deagle_projectile"],item:{id:"minecraft:anvil",count:1},damage:1.75d}

execute anchored eyes run particle minecraft:smoke ^-.6 ^-.2 ^1 0.1 0.1 0.1 0.01 13

execute as @e[type=arrow,tag=deagle_projectile,tag=!motion_added] at @s rotated as @p run function guns:deagle/deagle_apply_motion

#recoil
tp @s ~ ~ ~ ~ ~-10
