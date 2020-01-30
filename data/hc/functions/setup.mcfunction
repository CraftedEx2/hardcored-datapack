scoreboard objectives add life dummy
function hc:run/give_effects
scoreboard objectives add hc_settings dummy
scoreboard players set cr_count1 hc_settings 30
##you can change the number above to set creeper counter##
scoreboard objectives add death deathCount
tellraw @p[tag=!hc] ["",{"text":"==================================","color":"yellow"},{"text":"\nThanks for installing Hardcored Datapack","color":"aqua"},{"text":"\n Datapack by McJoe21 ","color":"aqua"},{"text":"(v1.0.0)","color":"white"},{"text":"\n\n  Information","color":"dark_blue","bold":true,"clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/projects/hardcored-datapack"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Go the the project website","color":"white"}]}}},{"text":"\n  YouTube Showcases","color":"dark_blue","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"If doing a YouTube showcase remember to give me credit","color":"white"}]}}},{"text":"\n  Join the Discord","color":"dark_blue","bold":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/Eb2kBSf"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Join the Discord!","color":"white"}]}}},{"text":"\n==================================","color":"yellow","bold":false}]
tag @p add hc
