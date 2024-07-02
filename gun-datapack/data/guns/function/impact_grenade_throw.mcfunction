execute anchored eyes run summon tnt ^ ^ ^ {fuse:150s,Tags:["impact"]}
execute as @e[type=tnt,tag=impact,tag=!motion_added] at @s rotated as @p run function guns:frag_motion
item modify entity @s weapon.mainhand guns:remove_1_item
scoreboard players reset @s grenade_cooldown
tag @s add impact_cooldown
schedule function guns:grenades/impact_cooldown 15t append
