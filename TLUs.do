**generating TLUs
replace C_cattle_heads=0 if C_cattle_heads==888
gen TLUcattle= C_cattle_heads*1
replace C_camels_heads =0 if C_camels_heads ==888
gen TLUcamel= C_camels_heads *1.25
replace C_goats_heads=0 if C_goats_heads ==888
gen TLUgoats= C_goats_heads *0.1
replace  C_sheep_heads =0 if C_sheep_heads ==888
gen TLUsheep= C_sheep_heads *0.1
replace  C_pigs_heads =0 if C_pigs_heads ==888
gen TLUpigs= C_pigs_heads *0.2
replace C_donkeys_heads =0 if C_donkeys_heads ==888
gen TLUdonkeys= C_donkeys_heads *0.7
replace C_chicken_heads =0 if C_chicken_heads ==888
gen TLUchickens= C_chicken_heads *0.01
gen TotalTLU= TLUcattle+ TLUcamel+ TLUgoats+ TLUsheep+ TLUpigs+ TLUdonkeys+ TLUchickens
