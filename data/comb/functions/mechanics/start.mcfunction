
function comb:mechanics/restart
#scoreboard players operation *max turn = *example turn
scoreboard players set *max turn 1
execute if score *level main matches 1 run scoreboard players set *maximum turn 5
execute if score *level main matches 2 run scoreboard players set *maximum turn 7
execute if score *level main matches 3 run scoreboard players set *maximum turn 10
execute if score *level main matches 4 run scoreboard players set *maximum turn 12
execute if score *level main matches 5 run scoreboard players set *maximum turn 15
execute if score *level main matches 6.. run scoreboard players set *maximum turn 999999999
scoreboard players set *score turn 0
#scoreboard players set *animation turn 1
function comb:mechanics/spawn
schedule function comb:mechanics/animation 2s append
bossbar set progress players @a
bossbar set progress visible true
item replace entity @a container.8 with barrier{display:{Name:'[{"text":"Выйти","italic":false,"color":"dark_red","bold":true}]',Lore:['[{"text":"Для использования, нужно выбросить данный предмет.","italic":false}]']},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1,it:1}
item replace entity @a container.4 with book{display:{Name:'[{"text":"Рестарт","italic":false,"color":"gold","bold":true}]',Lore:['[{"text":"Для использования, нужно выбросить данный предмет.","italic":false}]']},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1,it:2}
bossbar set progress color yellow
execute if score *level main matches ..5 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (","color": "gold"},{"score":{"name": "*level","objective": "main"},"color": "gold"},{"text": " Уровень)","color": "gold"}]
execute if score *level main matches 6 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Бесконечный Режим)","color": "gold"}]
execute if score *level main matches 7 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Разброс)","color": "gold"}]
execute if score *level main matches 8 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Блиц)","color": "gold"}]
execute if score *level main matches 9 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Двойной)","color": "gold"}]

execute store result bossbar progress max run scoreboard players get *max turn
execute store result bossbar progress value run scoreboard players get *animation turn