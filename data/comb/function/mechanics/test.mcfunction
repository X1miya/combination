tag @s add this.button1
#execute as @e[tag=test,tag=!new,type=marker] if score @s turn = @e[tag=this.button1,limit=1,type=marker] value run tag @s add this.value1
#execute as @e[tag=this.value1,type=marker,tag=test] unless score @s turn = *thisturn turn run function comb:mechanics/mistake
#execute as @e[tag=this.value1,type=marker,tag=test] if score @s turn = *thisturn turn run function comb:mechanics/correct
execute as @e[tag=test,tag=!new,type=marker] if score @s turn = *thisturn turn run tag @s add this.turn1
execute as @e[tag=this.turn1,type=marker,tag=test] unless score @s value = @e[tag=this.button1,limit=1,type=marker] value run function comb:mechanics/mistake
execute as @e[tag=this.turn1,type=marker,tag=test] if score @s value = @e[tag=this.button1,limit=1,type=marker] value run function comb:mechanics/correct
tag @e[tag=this.button1] remove this.button1
tag @e[tag=this.turn1] remove this.turn1
setblock ~ ~ ~ polished_blackstone_button[facing=south]