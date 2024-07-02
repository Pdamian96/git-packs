
execute if entity @s[nbt={Inventory:[{id:"minecraft:stick",Slot:-106b,components:{"minecraft:custom_model_data":4}}]}] run tag @s add flashlight
execute unless entity @s[nbt={Inventory:[{id:"minecraft:stick",Slot:-106b,components:{"minecraft:custom_model_data":4}}]}] run tag @s remove flashlight



advancement revoke @s only guns:yeah