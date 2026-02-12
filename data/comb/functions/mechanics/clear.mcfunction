scoreboard players add @s Timer 1


execute if entity @s[scores={Timer=10}] run scoreboard players set @s main 0
execute if entity @s[scores={Timer=10}] run setblock ~ ~ ~-1 birch_planks
execute if entity @s[scores={Timer=10}] run scoreboard players set @s Timer 0