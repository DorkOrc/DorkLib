# L = (-p_y) / d_y
scoreboard players set #L_y dorklib.var 0
scoreboard players operation #L_y dorklib.var -= #p_y dorklib.var
scoreboard players operation #L_y dorklib.var *= #M dorklib.constant
scoreboard players operation #L_y dorklib.var /= #d_y dorklib.var
