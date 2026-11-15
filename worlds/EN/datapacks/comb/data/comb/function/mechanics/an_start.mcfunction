#scoreboard players add *animation turn 1
execute as @e[tag=test,tag=!new,type=marker] if score @s turn = *animation turn run tag @s add this.turn
execute as @e[tag=button,type=marker] if score @s value = @e[tag=this.turn,limit=1,type=marker,tag=!second] value run tag @s add this.value
execute as @e[tag=button,type=marker] if score @s value = @e[tag=this.turn,limit=1,type=marker,tag=second] value run tag @s add this.value
execute as @e[tag=this.value,tag=button,type=marker] at @s run function comb:mechanics/an_loop
#execute as @e[tag=this.value,tag=button,type=marker] at @s unless score *level main matches 9 run function comb:mechanics/an_loop1
tag @e[tag=this.turn] remove this.turn
tag @e[tag=this.value] remove this.value