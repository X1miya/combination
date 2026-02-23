scoreboard players add *level main 1
execute if score *level main matches ..5 run function comb:mechanics/start
execute if score *level main matches 6.. run scoreboard players set *mode main 1
execute if score *level main matches 6.. run function comb:mechanics/restart
execute if score *level main matches 6.. run tp @a 1 -59 -15
execute if score *level main matches 6.. run playsound ui.toast.challenge_complete master @a ~ ~100 ~ 999999
execute if score *level main matches 6.. run scoreboard players set *level main 1
#execute if score *level main matches 7 run tellraw @a {"text": "Стоп. Что."}
playsound entity.player.levelup master @a ~ ~10000 ~ 999999
title @a times 20 60 20
execute if score *level main matches ..5 run title @a title [{"score":{"name": "*level","objective": "main"},"color": "gold"},{"text": " Уровень"}]


