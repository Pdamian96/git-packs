

execute if entity @s[tag=motion_added] store result score @s motion_y run data get entity @s Motion[1] 100000


execute if score @s motion_y matches 0 at @s run particle minecraft:large_smoke ~ ~ ~ 1.0 1.0 1.0 0.004 10
execute if score @s motion_y matches 0 at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.05 20
execute if score @s motion_y matches 0 at @s run summon creeper ~ ~ ~ {Fuse:0s,Invulnerable:1b}
execute if score @s motion_y matches 0 run kill @s
