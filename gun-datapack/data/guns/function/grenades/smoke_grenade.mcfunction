execute if entity @s[nbt={fuse:2s}] run kill @s

execute store result score @s fuse run data get entity @s fuse 1



execute if score @s fuse matches ..100 at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.25 1.75 1.25 0.004 7 force @a[tag=!no_smoke]
