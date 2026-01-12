say load
scoreboard objectives add boss_summon_id dummy
execute unless score #index boss_summon_id matches 0.. run scoreboard players set #index boss_summon_id 0