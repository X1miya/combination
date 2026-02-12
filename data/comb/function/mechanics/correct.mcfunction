execute if score *level main matches 1 run scoreboard players add *correct1 main 1
execute if score *level main matches 2 run scoreboard players add *correct2 main 1
execute if score *level main matches 3 run scoreboard players add *correct3 main 1
execute if score *level main matches 4 run scoreboard players add *correct4 main 1
execute if score *level main matches 5 run scoreboard players add *correct5 main 1
execute if score *level main matches 6 run scoreboard players add *correct6 main 1
execute if score *level main matches 7 run scoreboard players add *correct7 main 1
execute if score *level main matches 8 run scoreboard players add *correct8 main 1
execute if score *level main matches 9 run scoreboard players add *correct9 main 1
scoreboard players add *corrects main 1
execute store result bossbar progress value run scoreboard players get *thisturn turn
execute if score *level main matches ..5 run bossbar set minecraft:progress name [{"score":{"name": "*thisturn","objective": "turn"},"color": "blue","bold": true},{"text": " (","color": "gold"},{"score":{"name": "*level","objective": "main"},"color": "gold"},{"text": " Уровень)","color": "gold"}]
execute if score *level main matches 6 run bossbar set minecraft:progress name [{"score":{"name": "*thisturn","objective": "turn"},"color": "blue","bold": true},{"text": " (Бесконечный Режим)","color": "gold"}]
execute if score *level main matches 7 run bossbar set minecraft:progress name [{"score":{"name": "*thisturn","objective": "turn"},"color": "blue","bold": true},{"text": " (Разброс)","color": "gold"}]
execute if score *level main matches 8 run bossbar set minecraft:progress name [{"score":{"name": "*thisturn","objective": "turn"},"color": "blue","bold": true},{"text": " (Блиц)","color": "gold"}]
execute if score *level main matches 9 run bossbar set minecraft:progress name [{"score":{"name": "*thisturn","objective": "turn"},"color": "blue","bold": true},{"text": " (Двойной)","color": "gold"}]
scoreboard players add *thisturn turn 1
execute if score *thisturn turn >= *max turn if score *level main matches 1 run scoreboard players add *combo1 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 2 run scoreboard players add *combo2 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 3 run scoreboard players add *combo3 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 4 run scoreboard players add *combo4 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 5 run scoreboard players add *combo5 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 6 run scoreboard players add *combo6 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 6 run scoreboard players add *comboes6 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 7 run scoreboard players add *combo7 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 7 run scoreboard players add *comboes7 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 8 run scoreboard players add *combo8 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 8 run scoreboard players add *comboes8 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 9 run scoreboard players add *combo9 main 1
execute if score *thisturn turn >= *max turn if score *level main matches 9 run scoreboard players add *comboes9 main 1
execute if score *thisturn turn >= *max turn run scoreboard players add *comboes main 1
setblock ~ ~ ~-1 warped_planks
execute if score *thisturn turn >= *max turn if score *max turn <= *maximum turn run function comb:mechanics/return
execute if score *thisturn turn >= *max turn if score *max turn > *maximum turn run function comb:mechanics/next
playsound entity.experience_orb.pickup master @a ~ ~10000 ~ 999999 1 1
scoreboard players set @e[scores={main=3}] main 1
scoreboard players set @e[tag=this.button1] main 1
scoreboard players set *countbutton main 0