item modify entity @s weapon.mainhand guns:set_ammo_0
item modify entity @s weapon.offhand guns:set_ammo_0


scoreboard players reset @s timer
tag @s add deagle_reload
schedule function guns:deagle/deagle_reload_check 100t
playsound minecraft:deagle_reloading voice @s ~ ~ ~ 100 0