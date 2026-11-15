scoreboard players set *end turn 0
scoreboard players add @s Timer1 1
execute if score @s Timer1 matches 1 run setblock ~ ~ ~-1 spruce_planks
execute if score @s Timer1 matches 1 run playsound block.note_block.harp master @a ~ ~ ~ 99999 0.5 1
execute if score @s Timer1 matches 1 if score *animationspeed main matches 11 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 3 if score *animationspeed main matches 10 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 5 if score *animationspeed main matches 9 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 8 if score *animationspeed main matches 8 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 10 if score *animationspeed main matches 7 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 13 if score *animationspeed main matches 6 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 15 if score *animationspeed main matches 5 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 18 if score *animationspeed main matches 4 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 20 if score *animationspeed main matches 3 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 22 if score *animationspeed main matches 2 run scoreboard players set *end turn 1
execute if score @s Timer1 matches 25 if score *animationspeed main matches 1 run scoreboard players set *end turn 1