function comb:mechanics/main
#Interaction
execute as @e[type=minecraft:interaction,tag=start] if data entity @s interaction on target run function comb:mechanics/start
execute as @e[type=minecraft:interaction,tag=start] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=infinit] if data entity @s interaction on target run function comb:mode
execute as @e[type=minecraft:interaction,tag=infinit] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=aboutmap] if data entity @s interaction on target run function comb:basic/aboutmap
execute as @e[type=minecraft:interaction,tag=aboutmap] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=stats] if data entity @s interaction on target run function comb:stat
execute as @e[type=minecraft:interaction,tag=stats] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=classic] if data entity @s interaction on target run scoreboard players set *level main 6
execute as @e[type=minecraft:interaction,tag=classic] if data entity @s interaction on target run function comb:mechanics/start
execute as @e[type=minecraft:interaction,tag=classic] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=random] if data entity @s interaction on target run scoreboard players set *level main 7
execute as @e[type=minecraft:interaction,tag=random] if data entity @s interaction on target run function comb:mechanics/start
execute as @e[type=minecraft:interaction,tag=random] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=blitz] if data entity @s interaction on target run scoreboard players set *level main 8
execute as @e[type=minecraft:interaction,tag=blitz] if data entity @s interaction on target run function comb:mechanics/start
execute as @e[type=minecraft:interaction,tag=blitz] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=dual] if data entity @s interaction on target run scoreboard players set *level main 9
execute as @e[type=minecraft:interaction,tag=dual] if data entity @s interaction on target run function comb:mechanics/start
execute as @e[type=minecraft:interaction,tag=dual] if data entity @s interaction run data remove entity @s interaction

# Remove advancements
advancement revoke @a from minecraft:adventure/root
advancement revoke @a from minecraft:story/root
advancement revoke @a from minecraft:end/root
advancement revoke @a from minecraft:husbandry/root
advancement revoke @a from minecraft:nether/root
advancement revoke @a from minecraft:recipes/root