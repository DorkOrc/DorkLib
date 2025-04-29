data modify storage do:io output set value {Name:"minecraft:trial_spawner",Properties:{"ominous": "false", "trial_spawner_state": "inactive"}}
execute if block ~ ~ ~ trial_spawner[ominous=true] run data modify storage do:io output.Properties.ominous set value "true"
execute if block ~ ~ ~ trial_spawner[trial_spawner_state=waiting_for_players] run data modify storage do:io output.Properties.trial_spawner_state set value "waiting_for_players"
execute if block ~ ~ ~ trial_spawner[trial_spawner_state=active] run data modify storage do:io output.Properties.trial_spawner_state set value "active"
execute if block ~ ~ ~ trial_spawner[trial_spawner_state=waiting_for_reward_ejection] run data modify storage do:io output.Properties.trial_spawner_state set value "waiting_for_reward_ejection"
execute if block ~ ~ ~ trial_spawner[trial_spawner_state=ejecting_reward] run data modify storage do:io output.Properties.trial_spawner_state set value "ejecting_reward"
execute if block ~ ~ ~ trial_spawner[trial_spawner_state=cooldown] run data modify storage do:io output.Properties.trial_spawner_state set value "cooldown"
