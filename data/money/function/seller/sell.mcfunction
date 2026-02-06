# 

execute unless items entity @s weapon.mainhand *[custom_data~{money:{}}] run return fail

function money:seller/_sell with entity @s SelectedItem.components."minecraft:custom_data".money

execute if score #value money.calc >= #many money.calc run playsound entity.player.levelup master @s ~ ~ ~ 0.5 1
execute if score #value money.calc < #many money.calc run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1
