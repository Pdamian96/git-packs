execute if entity @s[nbt={fuse:1s}] at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.004 10
execute if entity @s[nbt={fuse:1s}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.05 20
execute if entity @s[nbt={fuse:1s}] at @s run summon creeper ~ ~ ~ {Fuse:0s}
