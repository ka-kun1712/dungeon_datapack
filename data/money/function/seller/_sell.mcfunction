# {price: int}

execute store result score #price money.calc run data get entity @s SelectedItem.components."minecraft:custom_data".money.price
execute store result score #count money.calc run data get entity @s SelectedItem.count

scoreboard players operation #value money.calc = #price money.calc
scoreboard players operation #value money.calc *= #count money.calc

item replace entity @s weapon.mainhand with air

scoreboard players operation @s money += #value money.calc