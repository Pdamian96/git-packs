# This is a list of commands that will run on the world's loading. Add scoreboard objectives here.
say Hello!
execute as @a run say Hello!
scoreboard objectives add TempObject dummy


forceload add 0 0

#Scoreboards


scoreboard objectives add shoot_cooldown dummy
scoreboard objectives add rotation_y dummy
scoreboard objectives add rotation_x dummy

scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

scoreboard objectives add pos_x_m dummy
scoreboard objectives add pos_y_m dummy
scoreboard objectives add pos_z_m dummy

scoreboard objectives add numbers dummy
scoreboard players set 1 numbers 1
scoreboard players set 35 numbers 35
scoreboard players set 5 numbers 5
scoreboard players set 2 numbers 2

scoreboard objectives add on_cooldown dummy

scoreboard objectives add random dummy

scoreboard objectives add ammo dummy
scoreboard objectives add max_ammo dummy

scoreboard objectives add reloads dummy


scoreboard objectives add x dummy
scoreboard objectives add z dummy
scoreboard objectives add vx dummy
scoreboard objectives add vz dummy


#used for reloading
scoreboard objectives add timer minecraft.custom:minecraft.total_world_time

#used for shooting_cooldown
scoreboard objectives add shooting_cooldown_timer minecraft.custom:minecraft.total_world_time

scoreboard objectives add reloading_gun dummy

#grenade stuff
scoreboard objectives add motion_x dummy
scoreboard objectives add motion_y dummy
scoreboard objectives add motion_z dummy
scoreboard objectives add fuse dummy


#NOT USED! (BUT I DONT WANT TO DELETE CUS THEY MIGHT BREAK THE ENTIRE THING)
scoreboard objectives add dc15a_spread dummy
scoreboard players set dummy dc15a_spread 05


#temp scoreboard
scoreboard objectives add temp dummy


scoreboard objectives add grenade_cooldown minecraft.custom:minecraft.total_world_time

function guns:2sec



# test gun (dc15a)
# /give @a stick[custom_model_data=1,custom_data={gun:1,ammo:10,max_ammo:10,right_click:1b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:10000}] 1
#
# Guns List:
# DC15a /give @a stick[item_name='{"color":"aqua","text":"DC15a Blaster Rifle"}',lore=['{"text":"From Starwars"}','{"italic":false,"text":"Commonly used by Clonetroopers"}'],rarity="rare",custom_model_data=1,custom_data={gun:1,ammo:20,max_ammo:20,right_click:1b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:10000}] 1
# MP40  /give @a stick[item_name='{"color":"aqua","text":"MP40"}',lore=['{"text":"WWII Area"}','{"italic":false,"text":"Common German Submachine Gun"}'],rarity="rare",custom_model_data=1,custom_data={gun:1,ammo:30,max_ammo:30,right_click:1b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:10000}] 1
# Remington870 /give @a stick[item_name='{"color":"aqua","text":"Remington870"}',rarity="rare",custom_model_data=3,custom_data={gun:1,ammo:5,max_ammo:5,right_click:1b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:10000}] 1
# Deagle /give @a stick[item_name='{"color":"aqua","text":"Deagle"}',rarity="rare",custom_model_data=4,custom_data={gun:1,ammo:5,max_ammo:5,right_click:1b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:10000}] 1
# MP9  /give @a stick[item_name='{"color":"aqua","text":"MP9"}',lore=['{"text":"Modern area"}','{"italic":false,"text":"Selective Fire Swiss Submachine Gun"}'],rarity="rare",custom_model_data=5,custom_data={gun:1,ammo:30,max_ammo:30,right_click:1b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:10000}] 1
#
#
#
#
#
#
#
#
#
# Gadgets List:
#
# Frag Grenade give @p gunpowder[custom_model_data=9001,custom_data={right_click:true},food={nutrition:0,saturation:0,eat_seconds:1000000}] 1
# Frag Grenade give @p gunpowder[custom_model_data=9002,custom_data={right_click:true},food={nutrition:0,saturation:0,eat_seconds:1000000}] 1
#
#



# How to Declare Guns:

# First: Copy Functions in datapack from other gun and ADVANCEMENT!!
# What to change:
# obviously change all the function commands to the right function/change the name of the gun infront of it
# in <gun_name>.reload_wait: schedule function <ticks> for reload time
# in <gun_name>.reload_check: Change Custom Model Data
# in <gun_name>.shoot_d: In the summon section, change damage
# in <gun_name>.apply_motion: Change Trajectory, force etc. Most Important: change bullet spread
# in reload_registry: add the gun
#
# Second: Item parameters
#   custom_model_data: what gun it is
#   Ammo: Current ammo
#   max_ammo: Ammo set to when reloaded
#   
#  
#
#
# 
#


