item modify entity @s weapon.mainhand guns:set_ammo_0
item modify entity @s weapon.offhand guns:set_ammo_0


scoreboard players reset @s timer
tag @s add mp9_reload
schedule function guns:mp9/mp9_reload_check 30t
playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 100 0.5
