scoreboard players set *end turn 0
execute unless score *level main matches 8 if score *score turn matches 1..5 run scoreboard players set *animationspeed main 1
execute unless score *level main matches 8 if score *score turn matches 6..10 run scoreboard players set *animationspeed main 2
execute unless score *level main matches 8 if score *score turn matches 11..15 run scoreboard players set *animationspeed main 3
execute unless score *level main matches 8 if score *score turn matches 16..20 run scoreboard players set *animationspeed main 4
execute unless score *level main matches 8 if score *score turn matches 21..25 run scoreboard players set *animationspeed main 5
execute unless score *level main matches 8 if score *score turn matches 26..30 run scoreboard players set *animationspeed main 6
execute unless score *level main matches 8 if score *score turn matches 31.. run scoreboard players set *animationspeed main 7

execute if score *level main matches 8 if score *score turn matches 1..5 run scoreboard players set *animationspeed main 7
execute if score *level main matches 8 if score *score turn matches 6..10 run scoreboard players set *animationspeed main 8
execute if score *level main matches 8 if score *score turn matches 11..15 run scoreboard players set *animationspeed main 9
execute if score *level main matches 8 if score *score turn matches 16..20 run scoreboard players set *animationspeed main 10
execute if score *level main matches 8 if score *score turn matches 21.. run scoreboard players set *animationspeed main 11

scoreboard players add *animation turn 1
bossbar set progress color yellow
execute if score *level main matches ..5 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (","color": "gold"},{"score":{"name": "*level","objective": "main"},"color": "gold"},{"text": " Уровень)","color": "gold"}]
execute if score *level main matches 6 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Бесконечный Режим)","color": "gold"}]
execute if score *level main matches 7 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Разброс)","color": "gold"}]
execute if score *level main matches 8 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Блиц)","color": "gold"}]
execute if score *level main matches 9 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Двойной)","color": "gold"}]
execute store result bossbar progress max run scoreboard players get *max turn
execute store result bossbar progress value run scoreboard players get *animation turn

#scoreboard players set *animation turn 0
scoreboard players set @e[tag=button] Timer1 0
function comb:mechanics/an_start