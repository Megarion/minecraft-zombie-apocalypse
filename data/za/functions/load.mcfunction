scoreboard objectives add hasDied deathCount
scoreboard objectives setdisplay belowName
scoreboard objectives add VAR dummy
scoreboard objectives setdisplay belowName
scoreboard players set TotalKills VAR 0
scoreboard players set #zero VAR 0
scoreboard players set #const1 VAR 20
scoreboard players set #const2 VAR 25
scoreboard players set #const3 VAR 5
scoreboard players set Current VAR 0
scoreboard objectives add startGame trigger
scoreboard objectives add Item dummy
team add enemy
team modify enemy color red
team add player
team modify player color yellow
team modify player friendlyFire false
team modify enemy deathMessageVisibility always
bossbar remove announcement
bossbar add announcement [{"text":"/trigger startGame ","bold":true,"color":"red"},{"text":"to start","bold":true,"color":"white"}]
bossbar set announcement players @a
bossbar set announcement color red
bossbar set announcement max 1
bossbar set announcement value 1
bossbar set announcement visible true
kill @e[type=item]

gamerule keepInventory false

scoreboard players set GuardianTimer VAR 0
scoreboard players set GiantTimer1 VAR 0
scoreboard players set GiantTimer2 VAR 0
scoreboard players set GiantTimer3 VAR 0
scoreboard players set BossTimer3 VAR 0
scoreboard players set BossTimer1 VAR 0
scoreboard players set BossTimer2 VAR 0
scoreboard players set BossTimer3 VAR 0
scoreboard players set BossTimer4 VAR 0
scoreboard players set BossTimer5 VAR 0
scoreboard players set BossTimer6 VAR 0

function za:end
tellraw @a {"text": "za:load", "color": "green"}