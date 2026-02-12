setblock ~ ~ ~-1 warped_planks
scoreboard players add *countbutton main 1
scoreboard players set @e[tag=this.button1] main 3
execute if score *countbutton main matches 2 run function comb:mechanics/correct
playsound entity.experience_orb.pickup master @a ~ ~10000 ~ 999999 1 1
scoreboard players set *buttontest main 1
