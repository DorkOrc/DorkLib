# L = (-p_z) / d_z
scoreboard players set #L_z dorklib.var 0
scoreboard players operation #L_z dorklib.var -= #p_z dorklib.var
scoreboard players operation #L_z dorklib.var *= #M dorklib.constant
scoreboard players operation #L_z dorklib.var /= #d_z dorklib.var
