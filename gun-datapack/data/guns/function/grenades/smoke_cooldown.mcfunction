##
 # frag_cooldown.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=smoke_cooldown] if score @s grenade_cooldown matches 14.. run advancement revoke @s only guns:throw_smoke
execute as @a[tag=smoke_cooldown] if score @s grenade_cooldown matches 14.. run tag @s remove frag_cooldown