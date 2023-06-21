execute as @a[gamemode=survival] run team join player @s
scoreboard players set Current VAR 1
scoreboard players set TotalKills VAR 0
scoreboard players set PlayerCount VAR 1
scoreboard players set EnemyCount VAR 1
scoreboard players set Timer VAR 0

scoreboard players set Wave VAR 0
scoreboard players reset @a Item
bossbar add time ""
bossbar set time color yellow
bossbar set time players @a
bossbar set time style notched_6
bossbar set time max 3000
bossbar set announcement visible false

tellraw @a {"text":"Game started","color":"gold","bold":true}