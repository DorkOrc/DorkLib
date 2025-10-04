# L = (-p_x) / d_x
scoreboard players set #L_x dorklib.var 0
scoreboard players operation #L_x dorklib.var -= #p_x dorklib.var
scoreboard players operation #L_x dorklib.var *= #M dorklib.constant
scoreboard players operation #L_x dorklib.var /= #d_x dorklib.var
