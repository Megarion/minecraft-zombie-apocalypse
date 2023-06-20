scoreboard players set BossTimer1 VAR 120
execute as @e[nbt={Tags:["boss"]}] at @s run summon armor_stand ~ ~ ~ {Tags:["fireball"],Invisible:1,ArmorItems:[{},{},{},{id:"tnt",Count:1}]}