use "D:\DEE\Dissertation\Quantitative approaches\DATA\19_11_2024_Alice_Kuule_Data_trimmed.dta"
log using "D:\DEE\Dissertation\Quantitative approaches\DATA\DAKuule_logfile_2024_August_2024.smcl"
describe
tab Country
tab Studysite
tab B_m1_gender
sum B_HH_count B_m1_YOB B_m1_resp_age B_m1_school_years
tab B_m1_relation_head
tab B_m1_home_occup
tab B_HH_m1_act_crop_farm
tab B_HH_m1_act_water_fuel
tab B_HH_m1_act_liv_keep
tab B_HH_m1_act_poultry_keep
tab Country Studysite
tab Country B_m1_gender
tab Studysite B_m1_gender
tab C_HH_dep_other
tab C_HH_dep_full_agri
tab C_HH_dep_full_agri Studysite
tab C_HH_land_crop_ws_acc
sum C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc
tab C_HH_land_liv_ws_acc
tab C_title_deeds_private
tab C_title_deeds_community
tab C_land_without_title_deeds
tab C_under_process_title_deed
tab C_title_deeds_group
tab C_communual_grazing_land
tab C_Renting_land_crops
tab C_title_deeds_community_nr
tab C_keep_animals
tab C_keep_animals Studysite
tab C_used_keep_liv Studysite
sum Studysite C_cattle_heads C_sheep_heads C_goats_heads C_camels_heads C_chicken_heads C_donkeys_heads C_pigs_heads
tab Studysite C_cattle_heads
tab D_Hmigr_HH
tab D_Hmigr_HH Studysite
sum D_Hmigr1_counts
tab D_Hmigr1_counts
sum F_HH_tot_expenditure
tab F_HH_tot_expenditure
sum F_income_head_control F_income_head_spc F_income_HH_tot
tab G_m_interconfs
tab G_m_interconfs Studysite
tab G_m_interconf_tribes
tab G_m_interconf_tribes Studysite
tab G_m_interconf_clans
tab G_m_interconf_clans
tab G_m_interconf_comm_other
tab G_m_interconf_comm_otherspc
tab G_m_intraconfs
tab G_m_intraconfs Studysite
tab G_m_intraconf_grass
tab G_m_intraconf_grass Studysite
tab G_m_intraconf_water
tab G_m_intraconf_water Studysite
tab G_m_intraconf_liv
tab G_m_intraconf_liv Studysite
tab G_m_intraconf_land
tab G_m_intraconf_land Studysite
tab G_m_other_intraconf
tab G_m_famy_confs
tab G_m_famy_confs Studysite
tab G_m_famy_conf_land Studysite
tab G_m_famy_conf_liv Studysite
tab G_m_famy_conf_trust Studysite
tab G_m_famy_confbasic Studysite
tab G_m_famy_otherconf
tab G_m_famy_alc
tab G_m_famy_alc Studysite
tab G_m_famy_viol Studysite
tab I_f_famy_confs
tab I_f_famy_confs Studysite
tab I_f_famy_conf_land
tab I_f_famy_conf_land Studysite
tab I_f_famy_conf_liv Studysite
tab I_f_famy_conf_trust Studysite
tab I_f_famy_confbasic Studysite
tab I_f_famy_otherconf Studysite
tab I_f_intraconfs
tab I_f_intraconfs Studysite
tab I_f_intraconf_grass Studysite
tab I_f_intraconf_water Studysite
tab I_f_intraconf_liv Studysite
tab I_f_intraconf_land Studysite
tab I_f_other_intraconf Studysite

gen GG_maleconflicts =(G_m_interconfs==1|G_m_intraconfs==1|G_m_famy_confs==1)//generating dummy variable of conflict occurence for male respondents 
tab GG_maleconflicts
tab GG_maleconflicts Studysite
tab G_m_interconfs Studysite
tab G_m_intraconfs Studysite
tab G_m_famy_confs Studysite

gen conf11 = 1 if G_m_interconfs ==1
replace conf11 = 2 if G_m_intraconfs == 1
replace conf11 = 3 if G_m_famy_confs == 1
tab conf11
 sum conf11
browse conf11
replace conf11 = 0 if conf11 == .
tab conf11 

gen B_HH_H_Bm_1_age = 1 if B_m1_resp_age <= 35 //creating agesets for male respondents
replace B_HH_H_Bm_1_age =2 if B_m1_resp_age > 35 & B_m1_resp_age <=60
replace B_HH_H_Bm_1_age = 3 if B_m1_resp_age > 60

gen Baseline_ppt = 911.1 if Studysite == 11 //Baseline_PPT cummulative as a single value for all obs in each studysite
replace Baseline_ppt = 139.8 if Studysite == 12
replace Baseline_ppt = 512.5 if Studysite == 21
replace Baseline_ppt = 364 if Studysite == 22
tab Baseline_ppt

gen ppt_Followup = 1394 if Studysite == 11//Baseline_PPT cummulative as a single value for all obs in each studysite
replace ppt_Followup = 284.9 if Studysite == 12
replace ppt_Followup = 900.7 if Studysite == 21
replace ppt_Followup = 663 if Studysite == 22
tab ppt_Followup

tab G_m_interconfs
tab G_m_interconfs Studysite
tab G_m_interconfs B_m1_gender
tab G_m_interconfs Studysite B_m1_gender
tab G_m_interconfs Studysite (B_m1_gender)
tab G_m_interconfs
tab G_m_interconfs Studysite
tab G_m_interconfs B_m1_gender
tab G_m_interconf_tribes
tab G_m_interconf_tribes Studysite
tab G_m_interconf_clans
tab G_m_interconf_clans Studysite
tab G_m_interconf_comm_other
tab G_m_interconf_comm_other Studysite
tab G_m_interconf_comm_otherspc
ab G_m_interconf_raids
tab G_m_interconf_raids
tab G_m_interconf_raids Studysite
tab G_m_interconf_grass
tab G_m_interconf_grass Studysite
tab G_m_interconf_water
tab G_m_interconf_water Studysite
G_m_interconf_liv
tab G_m_interconf_liv
tab G_m_interconf_liv Studysite
tab G_m_interconf_land
tab G_m_interconf_land
tab G_m_interconf_land Studysite
tab G_m_other_interconf
tab G_m_intraconfs
tab G_m_intraconfs Studysite
tab G_m_intraconf_grass
tab G_m_intraconf_grass Studysite
tab G_m_intraconf_water
tab G_m_intraconf_water Studysite
tab G_m_intraconf_liv
tab G_m_intraconf_liv Studysite
tab G_m_intraconf_land
tab G_m_intraconf_land Studysite
tab G_m_other_intraconf
tab G_m_other_intraconf Studysite
tab G_m_famy_confs
tab G_m_famy_confs Studysite
tab G_m_famy_conf_land
tab G_m_famy_conf_land Studysite
tab G_m_famy_conf_liv
tab G_m_famy_conf_liv Studysite
G_m_famy_conf_trust Studysite
tab G_m_famy_conf_trust
tab G_m_famy_conf_trust Studysite
tab G_m_famy_confbasic
tab G_m_famy_confbasic Studysite
tab G_m_famy_otherconf
tab G_m_famy_otherconf Studysite
tab G_m_famy_alc
tab G_m_famy_alc Studysite
tab G_m_famy_alc_viol
tab G_m_famy_alc_viol Studysite
tab I_f_famy_confs
tab I_f_famy_confs Studysite
tab I_f_famy_conf_land
tab I_f_famy_conf_land Studysite
tab I_f_famy_conf_liv
tab I_f_famy_conf_liv Studysite
tab I_f_famy_conf_trust
tab I_f_famy_conf_trust Studysite
tab I_f_famy_confbasic
tab I_f_famy_confbasic Studysite
tabI_f_famy_otherconf
tab I_f_famy_otherconf
tab I_f_famy_otherconf Studysite
tab I_f_intraconfs
tab I_f_intraconfs Studysite
I_f_intraconf_grass Studysite
tab I_f_intraconf_grass
tab I_f_intraconf_grass Studysite
tab I_f_intraconf_water
tab I_f_intraconf_water Studysite
tab I_f_intraconf_liv
tab I_f_intraconf_liv Studysite
tab I_f_intraconf_land
tab I_f_intraconf_land Studysite
tab I_f_other_intraconf Studysite
tab I_f_famy_alc
tab I_f_famy_alc Studysite
I_f_famy_viol Studysite
tab I_f_famy_viol Studysite



gen maleconflicts =( I_f_famy_confs ==1|I_f_intraconfs==1)//generating dummy of conflict occurence for female respondents
tab GG_maleconflicts
gen II_femaleconflicts =( I_f_famy_confs ==1|I_f_intraconfs==1)
tab II_femaleconflicts

drop if B_m1_marital_status > 5
drop if C_HH_land_liv_ws_acc > 400
drop if B_m1_resp_age <18
drop if B_m1_resp_age < 18
drop if B_m1_school_years > 20
drop if B_m1_relation_head > 7

//Probit models male respondents
probit GG_maleconflicts aaCountry i.aaStudysite i.B_HH_H_Bm_1_age aaB_HH_type i.C_HH_dep_full_agri Baseline_ppt aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control, vce (robust)
predict yhatprmale
sum yhatprmale
estat classification
margins, dydx (*)
eststo prmale

//Probit models male respondents
probit II_femaleconflicts aaCountry i.aaStudysite i.B_HH_H_Bm_1_age aaB_HH_type i.C_HH_dep_full_agri Baseline_ppt aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc H_income_work F_income_head_control, vce (robust)
predict yhatprfemale
sum yhatprfemale
estat classification
margins, dydx (*)
eststo prfemale


probit GG_maleconflicts i.Studysite B_HH_type B_famy_origin B_m1_resp_age B_m1_school_years i.B_m1_relation_head i.B_m1_home_occup C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri C_keep_animals D_Hmigr_HH G_m_famy_alc, vce(robust)
probit GG_maleconflicts i.Studysite B_HH_type B_famy_origin B_m1_resp_age B_m1_school_years i.B_m1_home_occup C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri C_keep_animals D_Hmigr_HH G_m_famy_alc, vce(robust)
predict yhatpr
sum yhatpr
estat classification
margins, dydx (*)
eststo pr

//ealier Probit models female respondents
probit II_femaleconflicts i.Studysite B_HH_type B_famy_origin B_m1_resp_age B_m1_school_years i.B_m1_relation_head i.B_m1_home_occup C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri C_keep_animals D_Hmigr_HH G_m_famy_alc, vce(robust)
probit II_femaleconflicts i.Studysite B_HH_type B_famy_origin B_m1_resp_age B_m1_school_years i.B_m1_home_occup C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri C_keep_animals D_Hmigr_HH G_m_famy_alc, vce(robust)
predict yhatpr
sum yhatpr
estat classification
margins, dydx (*)
eststo pr

//current Working probit model commands for male and female 
probit GG_maleconflicts aaCountry i.aaStudysite i.B_HH_H_Bm_1_age aaB_HH_type i.C_HH_dep_full_agri Baseline_ppt aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc i.F_income_head_control, vce (robust)
predict yhatprmale2
sum yhatprmale2
estat classification
margins, dydx (*)

probit II_femaleconflicts aaCountry i.aaStudysite i.B_HH_H_Bm_1_age aaB_HH_type i.C_HH_dep_full_agri Baseline_ppt B_famy_origin D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc H_income_work i.F_income_head_control, vce (robust)
predict yhatprfemale2
sum yhatprfemale2
estat classification
margins, dydx (*)
eststo prfemale2

// Mvprobit model commands
ssc install cmp //installation of the cmp package
ssc install ghk2, replace
cmp(G_m_interconfs = i.B_HH_H_Bm_1_age aaB_HH_type i.aaStudysite B_famy_origin i.C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc) (G_m_intraconfs = i.aaStudysite i.B_HH_H_Bm_1_age aaB_HH_type i.C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc)(G_m_famy_confs = i.aaStudysite i.B_HH_H_Bm_1_age aaB_HH_type i.C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc i.F_income_head_control), ind($cmp_probit $cmp_probit $cmp_probit)
margins, dydx (*) predict (pr equation ( G_m_interconfs)) force
margins, dydx (*) predict (pr equation ( G_m_intraconfs )) force
margins, dydx (*) predict (pr equation ( G_m_famy_confs )) force

//mvprobit where marginal effects command I failed to get 
summarize aaCountry aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri Baseline_ppt aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control
correlate G_m_interconfs G_m_intraconfs G_m_famy_confs
correlate aaCountry aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri Baseline_ppt aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control
manova G_m_interconfs G_m_intraconfs G_m_famy_confs = aaCountry aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH c.C_HH_land_crop_ws_acc c.C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control
manova G_m_interconfs G_m_intraconfs G_m_famy_confs = aaCountry i.aaStudysite B_HH_H_Bm_1_age aaB_HH_type i.C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH c.C_HH_land_crop_ws_acc c.C_HH_land_liv_ws_acc G_m_famy_alc i.F_income_head_control
mvreg 
//This procedure starting at summarise to mvreg only works for continous multivariate variables
mvprobit (G_m_interconfs = aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control) (G_m_intraconfs = aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control)(G_m_famy_confs = aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control)
mvprobit mvprobit (G_m_interconfs = aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control) (G_m_intraconfs = aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control)(G_m_famy_confs = aaCountry aaStudysite B_HH_H_Bm_1_age aaB_HH_type C_HH_dep_full_agri aaD_migr_liv D_Hmigr_HH C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc G_m_famy_alc F_income_head_control)
oo

mvreg G_m_interconfs G_m_intraconfs G_m_famy_confs = i.Studysite B_HH_type B_famy_origin B_m1_resp_age B_m1_school_years i.B_m1_home_occup C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri C_keep_animals D_Hmigr_HH G_m_famy_alc // For male respondents
mvreg G_m_interconfs G_m_intraconfs G_m_famy_confs = i.Studysite B_HH_type B_famy_origin B_m1_resp_age B_m1_school_years i.B_m1_home_occup C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc C_HH_dep_full_agri C_keep_animals D_Hmigr_HH G_m_famy_alc, corr

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
save	"D:\DEE\Dissertation\Quantitative	approaches\DATA\aworking_19_11_2024_Alice_Kuule_Data_trimmed.dta"


