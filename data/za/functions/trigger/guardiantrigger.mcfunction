scoreboard players set GuardianTimer VAR 45
execute as @e[type=zombie,nbt={Tags:["guardian"]}] at @s run execute as @p[team=player] at @s run summon minecraft:small_fireball ~ ~10 ~ {Motion:[0d,-0.2d]}
execute as @e[type=zombie,nbt={Tags:["lightning"]}] at @s run summon minecraft:lightning_bolt ~ ~ ~