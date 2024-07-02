##
 # frag_cooldown.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=impact_cooldown] if score @s grenade_cooldown matches 14.. run advancement revoke @s only guns:throw_impact
execute as @a[tag=impact_cooldown] if score @s grenade_cooldown matches 14.. run tag @s remove impact_cooldown