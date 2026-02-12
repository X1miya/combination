summon marker 20 -60 0 {Tags:["test","new"]}
tag @e[tag=button,limit=1,sort=random,type=marker] add button.random

scoreboard players add *score turn 1
scoreboard players operation @e[tag=new,tag=test,type=marker] turn = *score turn
scoreboard players operation @e[tag=new,tag=test,type=marker] value = @e[tag=button,tag=button.random,type=marker] value

tag @e[tag=new,type=marker,tag=test] remove new
execute if score *level main matches 9 run summon marker 20 -60 0 {Tags:["test","new","second"]}
scoreboard players operation @e[tag=new,tag=test,type=marker] turn = *score turn
scoreboard players operation @e[tag=new,tag=test,type=marker] value = @e[tag=button,tag=!button.random,type=marker,limit=1,sort=random] value
tag @e[tag=button.random,type=marker] remove button.random
tag @e[tag=new,type=marker,tag=test] remove new
execute if score *score turn < *max turn run function comb:mechanics/spawn
