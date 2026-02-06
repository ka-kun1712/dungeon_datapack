function money:admin/load
function money:death/load

scoreboard objectives add money dummy
scoreboard objectives setdisplay sidebar.team.gold money
scoreboard players add @a money 0

scoreboard objectives add money.calc dummy
scoreboard players set #many money.calc 1000
