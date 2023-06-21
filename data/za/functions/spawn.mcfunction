scoreboard players add Wave VAR 1
scoreboard players set Timer VAR 3000
tellraw @a [{"text":"Wave ", "color": "green","bold":true},{"score":{"objective":"VAR","name":"Wave"}, "color": "green","bold":true},{"text":"/10", "color": "green","bold":true}]
give @a[team=player] apple 5
give @a[team=player] salmon

execute if score Wave VAR matches 1 run function za:enemy/1
execute if score Wave VAR matches 1 run tellraw @a [{"text":"Tip: When there are few enemies left, they will glow, making it easier to track them down.", "color": "red"}]
execute if score Wave VAR matches 2..3 run function za:enemy/1a
execute if score Wave VAR matches 2 run tellraw @a [{"text":"Tip: You can collect resources from the enemies.", "color": "red"}]
execute if score Wave VAR matches 4..5 run function za:enemy/2
execute if score Wave VAR matches 6..7 run function za:enemy/3
execute if score Wave VAR matches 7 run function za:enemy/8
execute if score Wave VAR matches 6 run tellraw @a [{"text":"Tip: Enemies that are always glowing are special enemies and won't despawn. It is recommended that these enemies should be prioritized.", "color": "red"}]
execute if score Wave VAR matches 6 run tellraw @a [{"text":"Medics are enemies with a beacon on their head. They serve as the healer of the surrounding zombies.", "color": "red"}]
execute if score Wave VAR matches 8..9 run function za:enemy/4
execute if score Wave VAR matches 8 run tellraw @a [{"text":"Lightning zombies are speedy enemies that summon a lightning bolt at themselves. Stay away from them.", "color": "red"}]
execute if score Wave VAR matches 10..11 run function za:enemy/5
execute if score Wave VAR matches 10 run tellraw @a [{"text":"Guardians are stationary armored zombies that summon constant fireballs on top of the nearest player.", "color": "red"}]
execute if score Wave VAR matches 11 run function za:enemy/6
execute if score Wave VAR matches 11 run tellraw @a [{"text":"Tip: The boss have certain attacks you have to avoid at all times. Keep moving!", "color": "red"}]
execute if score Wave VAR matches 12 run function za:enemy/7
execute if score Wave VAR matches 12 run tellraw @a [{"text":"Tip: A good way of dealing damage is friendly fire.", "color": "red"}]
# scoreboard players operation ModWave VAR = Wave VAR
# scoreboard players operation ModWave VAR %= #const1 VAR
# execute if score ModWave VAR matches 0 run function za:enemy/7