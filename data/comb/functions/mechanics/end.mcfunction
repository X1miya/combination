scoreboard players set *end turn 2
scoreboard players add *max turn 1
fill 30 -57 7 32 -59 7 birch_planks
bossbar set progress color blue
bossbar set progress value 0
#execute store result bossbar progress value run scoreboard players get *thisturn turn
#execute if score *level main matches ..5 run bossbar set minecraft:progress name [{"score":{"name": "*thisturn","objective": "turn"},"color": "blue","bold": true},{"text": " (","color": "gold"},{"score":{"name": "*level","objective": "main"},"color": "gold"},{"text": " Уровень)","color": "gold"}]
#execute if score *level main matches 6 run bossbar set minecraft:progress name [{"score":{"name": "*thisturn","objective": "turn"},"color": "blue","bold": true},{"text": " (Бесконечный Режим)","color": "gold"}]