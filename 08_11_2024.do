use "D:\DEE\Dissertation\Quantitative approaches\DATA\19_11_2024_Alice_Kuule_Data_trimmed.dta"
//Male Inter-community level conflict types for multinomial regression
gen aaG_m_interconf_raids = 1 if G_m_interconf_raids ==1
replace aaG_m_interconf_raids = 0 if G_m_interconf_raids ==0
tab aaG_m_interconf_raids
gen aaG_m_interconf_grass = 1 if G_m_interconf_grass ==1
replace aaG_m_interconf_grass = 0 if G_m_interconf_grass ==0
gen aaG_m_interconf_water = 1 if G_m_interconf_water ==1
replace aaG_m_interconf_water = 0 if G_m_interconf_water ==0
gen aaG_m_interconf_liv = 1 if G_m_interconf_liv ==1
replace aaG_m_interconf_liv = 0 if G_m_interconf_liv ==0
gen aaG_m_interconf_land = 1 if G_m_interconf_land ==1
replace aaG_m_interconf_land = 0 if G_m_interconf_land ==0


//Male Intra_community level conflict types for multinomial regression
gen abG_m_intraconf_grass = 1 if G_m_intraconf_grass ==1
replace abG_m_intraconf_grass = 0 if G_m_intraconf_grass ==0
tab abG_m_intraconf_grass
gen abG_m_intraconf_water = 1 if G_m_intraconf_water ==1
replace abG_m_intraconf_water = 0 if G_m_intraconf_water ==0
gen abG_m_intraconf_liv = 1 if G_m_intraconf_liv ==1
replace abG_m_intraconf_liv = 0 if G_m_intraconf_liv ==0
gen abG_m_intraconf_land = 1 if G_m_intraconf_land ==1
replace abG_m_intraconf_land = 0 if G_m_intraconf_land ==0

//Male family level conflict types for multinomial regression
gen acG_m_famy_conf_land = 1 if G_m_famy_conf_land ==1
replace acG_m_famy_conf_land = 0 if G_m_famy_conf_land ==0
tab acG_m_famy_conf_land
gen acG_m_famy_conf_liv = 1 if G_m_famy_conf_liv ==1
replace acG_m_famy_conf_liv = 0 if G_m_famy_conf_liv ==0
gen acG_m_famy_conf_trust = 1 if G_m_famy_conf_trust ==1
replace acG_m_famy_conf_trust = 0 if G_m_famy_conf_trust ==0
gen acG_m_famy_confbasic = 1 if G_m_famy_confbasic ==1
replace acG_m_famy_confbasic = 0 if G_m_famy_confbasic ==0


//Female Intra_community level conflict types for multinomial regression
gen afI_f_intraconf_grass = 1 if I_f_intraconf_grass ==1
replace afI_f_intraconf_grass = 0 if I_f_intraconf_grass ==0
gen afI_f_intraconf_water = 1 if I_f_intraconf_water ==1
replace afI_f_intraconf_water = 0 if I_f_intraconf_water ==0
tab afI_f_intraconf_water
gen afI_f_intraconf_liv = 1 if I_f_intraconf_liv ==1
replace afI_f_intraconf_liv = 0 if I_f_intraconf_liv ==0
gen afI_f_intraconf_land = 1 if I_f_intraconf_land ==1
replace afI_f_intraconf_land = 0 if I_f_intraconf_land ==0

//Female family level conflict types for multinomial regression
gen afI_f_famy_conf_land = 1 if I_f_famy_conf_land ==1
replace I_f_famy_conf_land = 0 if I_f_famy_conf_land ==0
tab afI_f_famy_conf_land
gen afI_f_famy_conf_liv = 1 if I_f_famy_conf_liv ==1
replace afI_f_famy_conf_liv = 0 if I_f_famy_conf_liv ==0
gen afI_f_famy_conf_trust = 1 if I_f_famy_conf_trust ==1
replace afI_f_famy_conf_trust = 0 if I_f_famy_conf_trust ==0
gen afI_f_famy_confbasic = 1 if I_f_famy_confbasic ==1
replace afI_f_famy_confbasic = 0 if I_f_famy_confbasic ==0


gen aaPastoral_community = 1 if aaStudysite == 2
replace aaPastoral_community = 1 if aaStudysite ==4
replace aaPastoral_community = 0 if aaStudysite == 1
replace aaPastoral_community = 0 if aaStudysite == 3
tab aaPastoral_community
rename aaPastoral_community aProduction_system

//Trimmed data command
keep Country Country Studysite Country Studysite HH_code B_HH_type B_famy_origin B_m1_gender B_m1_YOB B_m1_resp_age B_m1_relation_head B_m1_school_years B_m1_home_occup B_soc2_m1_trusted_pos B_soc2_m1_social_welfare B_m1_marital_status B_m1_counts_wives C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_keep_animals C_used_keep_liv D_migr_liv D_liv_migr_decision D_liv_migr_freq D_Hmigr_HH F_income_head_control G_m_interconfs G_m_interconf_tribes G_m_interconf_raids G_m_interconf_grass G_m_interconf_water G_m_interconf_liv G_m_interconf_land G_m_other_interconf G_m_intraconfs G_m_intraconf_grass G_m_intraconf_water G_m_intraconf_liv G_m_intraconf_land G_m_other_intraconf G_m_famy_confs G_m_famy_conf_land G_m_famy_conf_liv G_m_famy_conf_trust G_m_famy_confbasic G_m_famy_otherconf G_m_famy_alc G_m_famy_viol H_income_work H_income_work_self I_f_intraconf_land I_f_famy_confs I_f_famy_conf_land I_f_famy_conf_liv I_f_famy_conf_trust I_f_famy_confbasic I_f_famy_otherconf I_f_intraconfs I_f_intraconf_grass I_f_intraconf_liv I_f_other_intraconf I_f_famy_alc I_f_famy_alc I_f_famy_viol conf11 GG_maleconflicts II_femaleconflicts B_HH_H_Bm_1_age ppt_Followup yhatpr Baseline_ppt yhatprf _est_prf aaCountry aaStudysite aaB_HH_type aaD_migr_liv TotalTLU aaTotalTLU aaD_cattle_dsn_gzg_distance_dys yhatprmale _est_prmale I_f_intraconf_water I_f_intraconf_grass I_f_intraconf_liv I_f_intraconf_land

keep Country Country Studysite Country Studysite HH_code B_HH_type B_famy_origin B_m1_gender B_m1_YOB B_m1_resp_age B_m1_relation_head B_m1_school_years B_m1_home_occup B_soc2_m1_trusted_pos B_soc2_m1_social_welfare B_m1_marital_status B_m1_counts_wives C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_keep_animals C_used_keep_liv D_migr_liv D_liv_migr_decision D_liv_migr_freq D_Hmigr_HH F_income_head_control G_m_interconfs G_m_interconf_tribes G_m_interconf_raids G_m_interconf_grass G_m_interconf_water G_m_interconf_liv G_m_interconf_land G_m_other_interconf G_m_intraconfs G_m_intraconf_grass G_m_intraconf_water G_m_intraconf_liv G_m_intraconf_land G_m_other_intraconf G_m_famy_confs G_m_famy_conf_land G_m_famy_conf_liv G_m_famy_conf_trust G_m_famy_confbasic G_m_famy_otherconf G_m_famy_alc G_m_famy_viol H_income_work H_income_work_self I_f_intraconf_land I_f_famy_confs I_f_famy_conf_land I_f_famy_conf_liv I_f_famy_conf_trust I_f_famy_confbasic I_f_famy_otherconf I_f_intraconfs I_f_intraconf_grass I_f_intraconf_liv I_f_other_intraconf I_f_famy_alc I_f_famy_alc I_f_famy_viol conf11 GG_maleconflicts II_femaleconflicts B_HH_H_Bm_1_age ppt_Followup yhatpr Baseline_ppt yhatprf _est_prf aaCountry aaStudysite aaB_HH_type aaD_migr_liv TotalTLU aaTotalTLU aaD_cattle_dsn_gzg_distance_dys yhatprmale _est_prmale I_f_intraconf_water I_f_intraconf_grass I_f_intraconf_liv I_f_intraconf_land B_m1_school_years_clean aaD_cattle_dsn_gzg_distance_dys aaD_cattle_wsgzg_distance_dys H_Health_facility_distance E_drink_water_piped E_drink_water_piped_min E_drink_water_piped_km E_drink_water_borehole E_drink_water_borehole_min E_drink_water_well E_drink_water_borehole_km E_drink_water_well E_drink_water_well_min E_drink_water_well_km E_drink_water_springs E_drink_water_springs_min E_drink_water_springs_km E_drink_water_stream E_drink_water_stream_min E_drink_water_stream_km E_drink_water_lake E_drink_water_lake_min E_drink_water_lake_km E_drink_water_pond_dam E_drink_water_pond_min E_drink_water_pond_dam_km E_drink_water_rain_water E_drink_water_rain_water_min E_drink_water_rain_water_km E_hyg_water_piped E_hyg_water_piped_min E_hyg_water_piped_km E_hyg_water_borehole E_hyg_water_borehole_min E_hyg_water_borehole_km E_hyg_water_well E_hyg_water_well_min E_hyg_water_well_km E_hyg_water_springs E_hyg_water_springs_min E_hyg_water_springs_km E_hyg_water_stream E_hyg_water_stream_min E_hyg_water_stream_km E_hyg_water_lake E_hyg_water_lake_min E_hyg_water_lake_km E_hyg_water_pond_dam E_hyg_water_pond_min E_hyg_water_pond_dam_km E_hyg_water_rain_water E_hyg_water_rain_water_min E_hyg_water_rain_water_km E_hyg_other_water_spc E_liv_water_piped E_liv_water_piped_min E_liv_water_piped_km E_liv_water_borehole E_liv_water_borehole_min E_liv_water_borehole_km E_liv_water_well E_liv_water_well_min E_liv_water_well_km E_liv_water_springs E_liv_water_springs_min E_liv_water_springs_km E_liv_water_stream E_liv_water_stream_min E_liv_water_lake E_liv_water_stream_km E_liv_water_lake E_liv_water_lake_min E_liv_water_lake_km E_liv_water_pond_dam E_liv_water_pond_min E_liv_water_pond_dam_km E_liv_water_rain_water E_liv_water_rain_water_km E_liv_water_other E_house_roof_type F_expenditure_may F_expenditure_apr F_expenditure_mar F_expenditure_feb F_expenditure_jan F_expenditure_nov F_expenditure_dec F_expenditure_oct F_expenditure_sep F_expenditure_aug F_expenditure_jul F_expenditure_jun F_expenditure_food F_income_HH_tot

//Education correction 
gen aEducation = 0 if B_m1_school_years ==0
replace aEducation = 1 if B_m1_school_years ==1
replace aEducation = 2 if B_m1_school_years ==2
replace aEducation = 3 if B_m1_school_years ==3
replace aEducation = 4 if B_m1_school_years == 4
replace aEducation = 5 if B_m1_school_years == 5
replace aEducation = 6 if B_m1_school_years == 6
replace aEducation = 7 if B_m1_school_years == 7
replace aEducation = 8 if B_m1_school_years == 8
replace aEducation = 9 if B_m1_school_years == 9
replace aEducation = 10 if B_m1_school_years == 10
replace aEducation = 11 if B_m1_school_years == 11
replace aEducation = 12 if B_m1_school_years == 12
replace aEducation = 13 if B_m1_school_years == 13
replace aEducation = 14 if B_m1_school_years == 14
replace aEducation = 15 if B_m1_school_years == 15
replace aEducation = 16 if B_m1_school_years == 16
replace aEducation = 17 if B_m1_school_years == 17
replace aEducation = 18 if B_m1_school_years == 18
replace aEducation = 19 if B_m1_school_years == 19
replace aEducation = 20 if B_m1_school_years == 20
replace aEducation = 0 if B_m1_school_years == 888
replace aEducation = 1 if B_m1_school_years > = 2000
tab aEducation

//Correlations 
corr GG_maleconflicts aaCountry aaStudysite aaB_HH_type aaTotalTLU B_HH_H_Bm_1_age aaD_migr_liv B_famy_origin D_Hmigr_HH aProduction_system H_income_work G_m_famy_viol G_m_famy_alc C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri
corr GG_maleconflicts aaCountry aaStudysite aaB_HH_type aaTotalTLU B_HH_H_Bm_1_age aaD_migr_liv B_famy_origin D_Hmigr_HH aProduction_system H_income_work F_income_head_control G_m_famy_viol G_m_famy_alc C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri

//12th Nov 2024 new male respondent Probit models 
probit GG_maleconflicts b(4).aaStudysite i.B_HH_H_Bm_1_age aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri H_income_work i.F_income_head_control C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm1
sum yhatprm1
estat classification
margins, dydx (*)
eststo prml
//includes studysite, income generation and controller of HH income
probit GG_maleconflicts b(4).aaStudysite i.B_HH_H_Bm_1_age aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm2
sum yhatprm2
estat classification
margins, dydx (*)
eststo prml2
//Includes production systems and country, income generation and controller of HH income
probit GG_maleconflicts aaCountry aProduction_system i.B_HH_H_Bm_1_age aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri H_income_work i.F_income_head_control C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm3
sum yhatprm3
estat classification
margins, dydx (*)
eststo prml3
//Includes production systems and country, and excludes studysite, income generation and controller of HH income
probit GG_maleconflicts aaCountry aProduction_system i.B_HH_H_Bm_1_age aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm4
sum yhatprm4
estat classification
margins, dydx (*)
eststo prml4
//Includes production systems and country and education;// and excludes studysite, income generation and controller of HH income
probit GG_maleconflicts aaCountry aProduction_system aEducation aEducation i.B_HH_H_Bm_1_age aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm5
sum yhatprm5
estat classification
margins, dydx (*)

//Includes studysite, education and Marital status; //but excludes income generation and controller of HH income
probit GG_maleconflicts b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm7
sum yhatprm7
estat classification
margins, dydx (*)
eststo prm7

//aaworking_Includes studysite, education and Marital status; //but excludes income generation and controller of HH income 
probit GG_maleconflicts b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm7
sum yhatprm7
estat classification
margins, dydx (*)
eststo prm7
probit GG_maleconflicts aaCountry aProduction_system b(3).B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin b(2).C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm8
sum yhatprm8
estat classification
margins, dydx (*)

probit II_femaleconflicts b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprm9
drop yhatprm9
predict yhatprf9
sum yhatprf9
estat classification
margins, dydx (*)
eststo prf9
probit II_femaleconflicts aaCountry aProduction_system b(3).B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin b(2).C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprf10
sum yhatprf10
estat classification
margins, dydx (*)
eststo prf9
probit II_femaleconflicts b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc H_income_work b(2).F_income_head_control aaD_migr_liv D_Hmigr_HH, vce (robust)
predict yhatprf11
sum yhatprf11
estat classification
margins, dydx (*)
eststo prf11
probit G_m_interconfs b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH, vce (robust)

//Male Inter-community, Intra-community and family level conflicts 
gen aaMale_inter_confs_multi = 1 if aaG_m_interconf_raids ==1
replace aaMale_inter_confs_multi = 2 if aaG_m_interconf_grass ==1
replace aaMale_inter_confs_multi = 3 if aaG_m_interconf_water ==1
replace aaMale_inter_confs_multi = 4 if aaG_m_interconf_liv ==1
replace aaMale_inter_confs_multi = 5 if aaG_m_interconf_land ==1
tab aaMale_inter_confs_multi
mlogit aaMale_inter_confs_multi b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH
eststo ml_interM

gen aaMale_intra_confs_multi = 1 if abG_m_intraconf_grass ==1
replace aaMale_intra_confs_multi = 2 if abG_m_intraconf_water ==1
replace aaMale_intra_confs_multi = 3 if abG_m_intraconf_liv ==1
replace aaMale_intra_confs_multi = 4 if abG_m_intraconf_land ==1
tab aaMale_intra_confs_multi
mlogit aaMale_intra_confs_multi b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH G_m_famy_alc

gen aaMale_famy_confs_multi = 1 if acG_m_famy_conf_land ==1
replace aaMale_famy_confs_multi = 2 if acG_m_famy_conf_liv ==1
replace aaMale_famy_confs_multi = 3 if acG_m_famy_conf_trust ==1
replace aaMale_famy_confs_multi = 4 if acG_m_famy_confbasic ==1
tab aaMale_famy_confs_multi
mlogit aaMale_famy_confs_multi b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH G_m_famy_alc
eststo mlfmyM

gen aaFemale_famy_confs_mult = 1 if I_f_famy_conf_land ==1
replace aaFemale_famy_confs_mult = 2 if I_f_famy_conf_liv ==1
replace aaFemale_famy_confs_mult = 3 if I_f_famy_conf_trust ==1
replace aaFemale_famy_confs_mult = 4 if I_f_famy_confbasic ==1
tab aaFemale_famy_confs_mult
mlogit aaFemale_famy_confs_mult b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH I_f_famy_alc b(2).F_income_head_control H_income_work
mlogit aaFemale_famy_confs_mult b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH I_f_famy_alc

gen aaFemale_intra_confs_mult = 1 if afI_f_intraconf_grass ==1
replace aaFemale_intra_confs_mult = 2 if afI_f_intraconf_water ==1
replace aaFemale_intra_confs_mult = 3 if afI_f_intraconf_liv ==1
replace aaFemale_intra_confs_mult = 4 if afI_f_intraconf_land ==1
tab aaFemale_intra_confs_mult
mlogit aaFemale_intra_confs_mult b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH I_f_famy_alc

//Female Inter-community, Intra-community and family level conflicts



//18-19th/12/2024 Data tranformation and recoding
g B_m1_school_years_clean = B_m1_school_years if B_m1_school_years!=888 & B_m1_school_years<21
tab B_m1_school_years_clean
//Age and Age group
g B_HH_H_Bm_1_age = 0 if aAge_count <= 35
replace B_HH_H_Bm_1_age = 1 if aAge_count > 35 & aAge_count <=60
replace B_HH_H_Bm_1_age = 2 if aAge_count > 60
tab B_HH_H_Bm_1_age
label define B_HH_H_Bm_1_age 0 "Ameto" 1 "Ngigetei" 2 "Ngimoru"
label values B_HH_H_Bm_1_age B_HH_H_Bm_1_age
tab B_HH_H_Bm_1_age B_HH_H_Bm_1_age
tab B_HH_H_Bm_1_age
edit aaD_cattle_dsn_gzg_distance_dys
edit aaD_cattle_dsn_gzg_distance_dys
save "D:\DEE\Dissertation\Quantitative approaches\DATA\19_11_2024_Alice_Kuule_Data_trimmed.dta"
//Health facility
g aHealth_facility_distance = H_Health_facility_distance if H_Health_facility_distance < 750
tab aHealth_facility_distance
tab B_m1_marital_status

g aEducation = B_m1_school_years if B_m1_school_years!=888 & B_m1_school_years<21
//marital status
gen aMarital_status = B_m1_marital_status if B_m1_marital_status !=888
replace aMarital_status = 0 if aMarital_status == 1
replace aMarital_status = 1 if aMarital_status == 2
replace aMarital_status = 2 if aMarital_status == 3
replace aMarital_status = 3 if aMarital_status == 4
replace aMarital_status = 4 if aMarital_status == 5
replace aMarital_status = 5 if aMarital_status == 6

gen aC_HH_dep_full_agri = 0 if C_HH_dep_full_agri ==1
replace aC_HH_dep_full_agri = 1 if C_HH_dep_full_agri == 2
replace aC_HH_dep_full_agri = 2 if C_HH_dep_full_agri == 3
replace aC_HH_dep_full_agri = 3 if C_HH_dep_full_agri == 4



replace aaStudysite = 0 if aaStudysite ==1
replace aaStudysite = 1 if aaStudysite ==2
replace aaStudysite = 2 if aaStudysite ==3
replace aaStudysite = 3 if aaStudysite ==4
save "D:\DEE\Dissertation\Quantitative approaches\DATA\30_10_2024_BLS_Binary_MVreg_data.dta", replace
use "D:\DEE\Dissertation\Quantitative approaches\DATA\30_10_2024_BLS_Binary_MVreg_data.dta"

g afemale_age = 0 if aB_m2_resp_age_clean <= 35
replace afemale_age = 1 if aB_m2_resp_age_clean > 35 & aB_m2_resp_age_clean <=60
replace afemale_age = 2 if aB_m2_resp_age_clean > 60
tab afemale_age

label define aaStudysite 0 "Chepareria" 1 "Lokiriama" 2 "Matany" 3 "Rupa"
label values aaStudysite aaStudysite
label define aaD_migr_liv 0 "No" 1 "Yes"
label values aaD_migr_liv aaD_migr_liv
label define D_Hmigr_HH 0 "No" 1 "Yes"
label values D_Hmigr_HH D_Hmigr_HH
tab aEducation
label define aC_HH_dep_full_agri 0 "Livestock" 1 "Crop" 2 "Crop_livestock" 3 "Non_farm"
label values aC_HH_dep_full_agri aC_HH_dep_full_agri

tab conf11
gen aaMale_confs_multi = 0 if G_m_interconfs == 1
replace aaMale_confs_multi = 1 if G_m_intraconfs == 1
replace aaMale_confs_multi = 2 if G_m_famy_confs == 1

