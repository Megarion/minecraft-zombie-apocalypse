execute as @a[gamemode=survival] run execute if score @s hasDied matches 1.. run function za:spectator
execute as @a[team=player,gamemode=!survival] run team leave @s
execute if score PlayerCount VAR matches ..0 run execute unless score Current VAR matches 0 run function za:stop
execute unless score Current VAR matches 0 run execute if score Timer VAR matches ..0 run function za:spawn
execute unless score Current VAR matches 0 run execute if score EnemyCount VAR matches ..0 run function za:spawn
execute unless score Current VAR matches 0 run execute unless score Wave VAR matches 11.. run scoreboard players remove Timer VAR 1
execute unless score Current VAR matches 0 run execute if score PlayerCount VAR matches ..0 run function za:stop
bossbar set time name [{"text":"Wave "},{"score":{"objective":"VAR","name":"Wave"}},{"text":"/10 - Kills: "},{"score":{"objective":"VAR","name":"TotalKills"}},{"text":" - Enemies left: "},{"score":{"objective":"VAR","name":"EnemyCount"}}]
execute store result bossbar time value run scoreboard players get Timer VAR

effect give @a[team=player] glowing 1 1 true
execute if score EnemyCount VAR matches ..10 run effect give @e[team=enemy] glowing 1 1 true

# Vengeful Giant health
execute store result bossbar giant value run data get entity @e[type=giant,limit=1] Health
# Vengeful Prime health
execute store result bossbar boss value run data get entity @e[type=zombie,nbt={Tags:["boss"]},limit=1] Health

scoreboard players enable @a startGame
execute as @a[scores={startGame=1..}] if score Current VAR matches 0 run function za:playerjoin
scoreboard players set @a startGame 0

execute unless score Current VAR matches 1 run effect give @a[team=player] saturation 1 1 true

# Special enemies
execute as @e[type=zombie,nbt={Tags:["beacon"]}] at @s run effect give @e[type=zombie,distance=..10] regeneration 1 2 false
execute if score GuardianTimer VAR matches ..0 run function za:trigger/guardiantrigger
scoreboard players remove GuardianTimer VAR 1

execute if score GiantTimer1 VAR matches ..0 run function za:trigger/g1trigger
scoreboard players remove GiantTimer1 VAR 1
execute if score GiantTimer2 VAR matches ..0 run function za:trigger/g2trigger
scoreboard players remove GiantTimer2 VAR 1
execute if score GiantTimer3 VAR matches ..0 run function za:trigger/g3trigger
scoreboard players remove GiantTimer3 VAR 1

execute if score BossTimer1 VAR matches ..0 run function za:trigger/b1trigger
scoreboard players remove BossTimer1 VAR 1
execute if score BossTimer2 VAR matches ..0 run function za:trigger/b2trigger
scoreboard players remove BossTimer2 VAR 1
execute if score BossTimer3 VAR matches ..0 run function za:trigger/b3trigger
scoreboard players remove BossTimer3 VAR 1
execute if score BossTimer4 VAR matches ..0 run function za:trigger/b4trigger
scoreboard players remove BossTimer4 VAR 1
execute if score BossTimer5 VAR matches ..0 run function za:trigger/b5trigger
scoreboard players remove BossTimer5 VAR 1
execute if score BossTimer6 VAR matches ..0 run function za:trigger/b6trigger
scoreboard players remove BossTimer6 VAR 1

execute unless entity @e[type=giant] run kill @e[nbt={Tags:["giant_ai"]}]

# Special attacks
execute as @e[nbt={Tags:["fireball"]}] at @s run tp @s ^ ^ ^0.2 facing entity @p[team=player]
execute as @a[team=player] at @s run execute as @e[nbt={Tags:["fireball"]}, distance=..0.5] run function za:summon/fireball
kill @e[type=fireball]

# Enemy count
execute as @e[type=!player] if data entity @s CustomName run team join enemy @s

scoreboard players operation PrevEnemyCount VAR = EnemyCount VAR
scoreboard players set EnemyCount VAR 0
execute as @e[team=enemy] run scoreboard players add EnemyCount VAR 1
execute if score PrevEnemyCount VAR > EnemyCount VAR run function za:addkill
execute unless score Current VAR matches 0 run execute store result score PlayerCount VAR run team list player