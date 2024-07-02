
# store position of arrow
execute store result score @s pos_x run data get entity @s Pos[0] 1000
execute store result score @s pos_y run data get entity @s Pos[1] 1000
execute store result score @s pos_z run data get entity @s Pos[2] 1000

#TP Forward
tp @s ^ ^ ^0.2

# Store second Position
execute store result score @s pos_x_m run data get entity @s Pos[0] 1000
execute store result score @s pos_y_m run data get entity @s Pos[1] 1000
execute store result score @s pos_z_m run data get entity @s Pos[2] 1000



#Subtract first position from second, ending value is the motion
scoreboard players operation @s pos_x_m -= @s pos_x


scoreboard players operation @s pos_y_m -= @s pos_y



scoreboard players operation @s pos_z_m -= @s pos_z
#adds bullet spread


#apply to entity
execute store result entity @s Motion[0] double 0.05 run scoreboard players get @s pos_x_m
execute store result entity @s Motion[1] double 0.05 run scoreboard players get @s pos_y_m
execute store result entity @s Motion[2] double 0.05 run scoreboard players get @s pos_z_m

tag @s add motion_added
