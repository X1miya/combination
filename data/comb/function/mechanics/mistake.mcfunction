
function comb:mechanics/restart
execute if score *level main matches 1 run scoreboard players add *mistake1 main 1
execute if score *level main matches 2 run scoreboard players add *mistake2 main 1
execute if score *level main matches 3 run scoreboard players add *mistake3 main 1
execute if score *level main matches 4 run scoreboard players add *mistake4 main 1
execute if score *level main matches 5 run scoreboard players add *mistake5 main 1
execute if score *level main matches 6 run scoreboard players add *mistake6 main 1
execute if score *level main matches 7 run scoreboard players add *mistake7 main 1
execute if score *level main matches 8 run scoreboard players add *mistake8 main 1
execute if score *level main matches 9 run scoreboard players add *mistake9 main 1
scoreboard players add *mistakes main 1
playsound block.note_block.didgeridoo master @a ~ ~10000 ~ 999999 0
execute at @e[tag=this.button1] run setblock ~ ~ ~-1 mangrove_planks
scoreboard players set @e[tag=this.button1] main 1
schedule function comb:mechanics/start 1s