scoreboard players set KillDifference VAR 0
scoreboard players operation KillDifference VAR += PrevEnemyCount VAR
scoreboard players operation KillDifference VAR -= EnemyCount VAR
scoreboard players operation TotalKills VAR += KillDifference VAR