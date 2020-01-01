##low gravity effects##
execute as @e[tag=!ng,type=!#hc:ng_ignore,limit=10] run function hc:run/give_effects
tag @e[tag=!ng,type=!#hc:ng_ignore,limit=10] add ng
data merge entity @e[type=item,tag=!ng2,limit=1] {Tags:["ng2"],NoGravity:1b}
data merge entity @e[type=arrow,tag=!ng2,limit=1] {Tags:["ng2"],NoGravity:1b}
data merge entity @e[type=snowball,tag=!ng2,limit=1] {Tags:["ng2"],NoGravity:1b}
data merge entity @e[type=fireball,tag=!ng2,limit=1] {Tags:["ng2"],NoGravity:1b}

execute as @p[scores={death=1}] run function hc:run/give_effects

##harder mobs##
execute as @p in minecraft:the_nether run function hc:run/the_nether

execute as @e[type=#minecraft:skeletons,limit=1,tag=!hc] run data merge entity @s {Tags:["hc"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
data merge entity @e[type=minecraft:zombie,limit=1,tag=!hc] {Tags:["hc"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
data merge entity @e[type=minecraft:zombie_villager,limit=1,tag=!hc] {Tags:["hc"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
data merge entity @e[type=minecraft:enderman,limit=1,tag=!hc] {Tags:["hc"],carriedBlockState:{Name:"minecraft:tnt",Properties:{unstable:"true"}}}

##clean up##
kill @e[type=minecraft:arrow,nbt={life:440s}]
scoreboard players add @e[type=minecraft:snowball] life 1
kill @e[type=minecraft:snowball,scores={life=500..}]

##fire arrows##
execute at @e[type=minecraft:arrow,nbt={Fire:1990s}] run fill ~-1 ~ ~1 ~1 ~ ~-1 fire keep

##random charged creepers##
execute store result score cr_count hc_settings run tag @e[type=minecraft:creeper,tag=!cr1] add cr
tag @e[type=minecraft:creeper,tag=!cr1] remove cr
execute if score cr_count hc_settings = cr_count1 hc_settings run data merge entity @e[type=minecraft:creeper,tag=!cr1,sort=random,limit=1] {powered:1b}
execute if score cr_count hc_settings = cr_count1 hc_settings run tag @e[type=minecraft:creeper] add cr1