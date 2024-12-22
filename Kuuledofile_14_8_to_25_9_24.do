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

use "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta"
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



gen GG_maleconflicts =( I_f_famy_confs ==1|I_f_intraconfs==1)//generating dummy of conflict occurence for female respondents
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

// Mvprobit model commands Using Conditional Marginal Probability 
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

use "D:\DEE\Dissertation\Quantitative approaches\DATA\19_11_2024_Alice_Kuule_Data_trimmed.dta"
use "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta"
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
gen aaMale_inter_confs_multi = 0 if aaG_m_interconf_raids ==1
replace aaMale_inter_confs_multi = 1 if aaG_m_interconf_grass ==1
replace aaMale_inter_confs_multi = 2 if aaG_m_interconf_water ==1
replace aaMale_inter_confs_multi = 3 if aaG_m_interconf_liv ==1
replace aaMale_inter_confs_multi = 4 if aaG_m_interconf_land ==1
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

gen aAge_count = B_HH_H_Bm_1_age if B_HH_H_Bm_1_age >10
g aAgeset = 0 if aAge_count <= 35
replace aAgeset = 1 if aAge_count > 35 & aAge_count !=60
replace aAgeset = 2 if aAge_count >=60
tab aAge_count
tab aAgeset

label define aAgeset 0 "Ameto" 1 "Ngigetei" 2 "Ngimoru"
label values aAgeset aAgeset
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
gen a2Health_facility_distance= aHealth_facility_distance if aHealth_facility_distance <700

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
gen aaStudysite= Studysite
replace aaStudysite = 0 if aaStudysite==11
replace aaStudysite = 1 if aaStudysite==12
replace aaStudysite = 2 if aaStudysite==21
replace aaStudysite = 3 if aaStudysite==22
save "D:\DEE\Dissertation\Quantitative approaches\DATA\30_10_2024_BLS_Binary_MVreg_data.dta", replace
use "D:\DEE\Dissertation\Quantitative approaches\DATA\30_10_2024_BLS_Binary_MVreg_data.dta"
use "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta"

gen afmle_B_m2_resp_age_count = B_m2_resp_age if B_m2_resp_age >12 & B_m2_resp_age !=888
g afemale_age = 0 if afmle_B_m2_resp_age_count <= 35
replace afemale_age = 1 if afmle_B_m2_resp_age_count > 35 & afmle_B_m2_resp_age_count <=60
replace afemale_age = 2 if afmle_B_m2_resp_age_count > 60
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

replace aaMale_intra_confs_multi = 0 if aaMale_intra_confs_multi == 1
replace aaMale_intra_confs_multi = 1 if aaMale_intra_confs_multi == 2
replace aaMale_intra_confs_multi = 2 if aaMale_intra_confs_multi == 3
replace aaMale_intra_confs_multi = 3 if aaMale_intra_confs_multi == 4

replace aaFemale_intra_confs_mult = 0 if aaFemale_intra_confs_mult == 1
replace aaFemale_intra_confs_mult = 1 if aaFemale_intra_confs_mult == 2
replace aaFemale_intra_confs_mult = 2 if aaFemale_intra_confs_mult == 3
replace aaFemale_intra_confs_mult = 3 if aaFemale_intra_confs_mult == 4

replace aaMale_inter_confs_multi = 0 if aaMale_inter_confs_multi == 1
replace aaMale_inter_confs_multi = 1 if aaMale_inter_confs_multi == 2
replace aaMale_inter_confs_multi = 2 if aaMale_inter_confs_multi == 3
replace aaMale_inter_confs_multi = 3 if aaMale_inter_confs_multi == 4
replace aaMale_inter_confs_multi = 4 if aaMale_inter_confs_multi == 5

replace aaMale_famy_confs_multi = 0 if aaMale_famy_confs_multi == 1
replace aaMale_famy_confs_multi = 1 if aaMale_famy_confs_multi == 2
replace aaMale_famy_confs_multi = 2 if aaMale_famy_confs_multi == 3
replace aaMale_famy_confs_multi = 3 if aaMale_famy_confs_multi == 4

replace aaFemale_famy_confs_mult = 0 if aaFemale_famy_confs_mult == 1
replace aaFemale_famy_confs_mult = 1 if aaFemale_famy_confs_mult == 2
replace aaFemale_famy_confs_mult = 2 if aaFemale_famy_confs_mult == 3
replace aaFemale_famy_confs_mult = 3 if aaFemale_famy_confs_mult == 4

//old Multinomials models for male respondents 
gen aaMale_confs_multi = 0 if G_m_interconfs == 1
replace aaMale_confs_multi = 1 if G_m_intraconfs == 1
replace aaMale_confs_multi = 2 if G_m_famy_confs == 1

//New outcome varible for Multinomial models for male respondents (With Alice) 
gen aa2Male_confs_multi = 0 if G_m_interconfs !=.|G_m_intraconfs!=.|G_m_famy_confs!=.
recode aa2Male_confs_multi(0=1)if G_m_interconfs==1
recode aa2Male_confs_multi(0=2)if G_m_intraconfs==1
recode aa2Male_confs_multi(0=3)if G_m_famy_confs==1

replace aaMale_confs_multi = 1 if G_m_intraconfs ==1
replace aaMale_confs_multi = 2 if G_m_famy_confs == 1

mprobit _est_ml_interM b(2).aaStudysite i.B_HH_H_Bm_1_age aEducation b(3).aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH
mprobit _est_ml_interM i.aaStudysite i.B_HH_H_Bm_1_age aEducation i.aMarital_status aaTotalTLU aaB_HH_type B_famy_origin i.C_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH

//Multinomials models for female respondents 
gen aaFemale_confs_multi = 0 if I_f_intraconfs == 1
replace aaFemale_confs_multi = 1 if I_f_famy_confs == 1

replace aaMale_confs_multi = 2 if G_m_famy_confs == 1

use "D:\DEE\Dissertation\Quantitative approaches\DATA\aworking_19_11_2024_Alice_Kuule_Data_trimmed.dta"
use "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta"
//Model Estimates for Determinants of conflicts among Male respondents
probit GG_maleconflicts i.aaStudysite i.B_HH_H_Bm_1_age aEducation i.aMarital_status aaB_HH_type B_famy_origin i.aC_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH,vce(robust)
predict yhatprmMales
sum yhatprmMales
estat classification
margins, dydx (*)
estimate store model_prmMales

//Model Estimates for Determinants of inter-community, intra-community and family level conflicts 
probit G_m_interconfs i.aaStudysite i.B_HH_H_Bm_1_age aEducation i.aMarital_status aaB_HH_type B_famy_origin i.aC_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH,vce(robust)
predict yhatprminter
sum yhatprminter
estat classification
margins, dydx (*)
estimate store model_prminter

probit G_m_intraconfs i.aaStudysite i.B_HH_H_Bm_1_age aEducation i.aMarital_status aaB_HH_type B_famy_origin i.aC_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH,vce(robust)
predict yhatprmintra
sum yhatprmintra
estat classification
margins, dydx (*)
estimate store model_prmintra

probit G_m_famy_confs i.aaStudysite i.B_HH_H_Bm_1_age aEducation i.aMarital_status aaB_HH_type B_famy_origin i.aC_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH,vce(robust)
predict yhatprmfamy
sum yhatprmfamy
estat classification
margins, dydx (*)
estimate store model_prmfamy

//Multivariate probit model ## Categorical variables include; aaStudysite, B_HH_H_Bm_1_age, aMarital_status, aC_HH_dep_full_agri
mvprobit (G_m_interconfs = aaStudysite B_HH_H_Bm_1_age aEducation aMarital_status aaB_HH_type B_famy_origin aC_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH)(G_m_intraconfs = aaStudysite B_HH_H_Bm_1_age aEducation aMarital_status aaB_HH_type B_famy_origin aC_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH)(G_m_famy_confs = aaStudysite B_HH_H_Bm_1_age aEducation aMarital_status aaB_HH_type B_famy_origin aC_HH_dep_full_agri C_HH_land_crop_ws_acc C_HH_land_liv_ws_acc aaD_migr_liv D_Hmigr_HH), vce (robust)

//Multivariate probit model# SIMULATED MAXIMUM LIKELIHOOD
use "D:\DEE\Dissertation\Quantitative approaches\DATA\aworking_19_11_2024_Alice_Kuule_Data_trimmed.dta", clear
use "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta"
****Step 1 run the mvprobit model
mvprobit (G_m_interconfs = aaStudysite B_HH_H_Bm_1_age aEducation aMarital_status aaB_HH_type)(G_m_intraconfs = aaStudysite B_HH_H_Bm_1_age aEducation aMarital_status aaB_HH_type) (G_m_famy_confs = aaStudysite B_HH_H_Bm_1_age aEducation aMarital_status aaB_HH_type), vce (robust)

****Step 2: Post estimation command to estimate Predictions from multivariate probit models estimated by SML 

mvppred pred_xb, xb 

*Step 3" Generate coeefiencts for each binay category 
gen Coef_site_inter = .7196167 
gen Coef_age_inter = -.0029515
gen Coef_educ_inter = -.0234244 
gen Coef_mar_inter = .0900906  
gen Coef_type_inter = .2959558
 
gen Coef_site_intra = .2906342 
gen Coef_age_intra =  -.0526569  
gen Coef_educ_intra = .0248199   
gen Coef_mar_intra = .0182725  
gen Coef_type_intra = -.0811265

gen Coef_site_fam = .3991599 
gen Coef_age_fam = -.0437471 
gen Coef_educ_fam = .0030015 
gen Coef_mar_fam = .0291076 
gen Coef_type_fam = .1125377

*Step 4: Calculating Marginal effect using (Coefficients and linear Predictions) 
gen ME_site_inter =normalden(pred_xb1)*Coef_site_inter 
gen ME_age_inter =normalden(pred_xb1)*Coef_age_inter 
gen ME_educ_inter =normalden(pred_xb1)*Coef_educ_inter 
gen ME_mar_inter =normalden(pred_xb1)*Coef_mar_inter 
gen ME_type_inter =normalden(pred_xb1)*Coef_type_inter 

gen ME_site_intra =normalden(pred_xb2)*Coef_site_intra 
gen ME_age_intra =normalden(pred_xb2)*Coef_age_intra 
gen ME_educ_intra =normalden(pred_xb2)*Coef_educ_intra 
gen ME_mar_intra =normalden(pred_xb2)*Coef_mar_intra 
gen ME_type_intra =normalden(pred_xb2)*Coef_type_intra

gen ME_site_fam =normalden(pred_xb3)*Coef_site_fam 
gen ME_age_fam =normalden(pred_xb3)*Coef_age_fam 
gen ME_educ_fam =normalden(pred_xb3)*Coef_educ_fam 
gen ME_mar_fam =normalden(pred_xb3)*Coef_mar_fam 
gen ME_type_fam =normalden(pred_xb3)*Coef_type_fam

*Step 5 After estimating the ME for each observation we can get the mean using the summarize or mean command.
summ ME_*

//17/12/2024 new Data transformation 
gen a2Health_facility_distance= aHealth_facility_distance if aHealth_facility_distance <7

use "D:\DEE\Dissertation\Quantitative approaches\DATA\30_10_2024_BLS_Binary_MVreg_data.dta" 
use "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta"
gen aC_cattle_keeping = C_cattle_keeping if C_cattle_keeping !=888
gen aC_goats_keeping = C_goats_keeping if C_goats_keeping !=888
gen aC_camels_keeping = C_camels_keeping if C_camels_keeping !=888
gen aC_sheep_keeping = C_sheep_keeping if C_sheep_keeping !=888
gen aC_donkeys_keeping = C_donkeys_keeping if C_donkeys_keeping !=888
gen aC_pigs_keeping = C_pigs_keeping if C_pigs_keeping !=888
gen aC_chicken_keeping = C_chicken_keeping if C_chicken_keeping !=888
gen aaC_chicken_keeping = aC_chicken_keeping if aC_chicken_keeping !=.
gen aC_cattle_heads = C_cattle_heads if C_cattle_heads !=253
gen aC_cattle_heads = C_cattle_heads if C_cattle_heads < 253
gen aC_sheep_heads = C_sheep_heads if C_sheep_heads < 61
//PCA for livestock type owned 
pca aC_cattle_keeping aC_goats_keeping aC_camels_keeping aC_sheep_keeping aC_donkeys_keeping aC_pigs_keeping aC_chicken_keeping
screeplot
screeplot, yline(1) ci(het)
predict pc1 pc2 pc3

use "D:\DEE\Dissertation\Quantitative approaches\DATA\aworking_19_11_2024_Alice_Kuule_Data_trimmed.dta",
use "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta"
//PCA for Household drinking water types/sources
pca E_drink_water_piped E_drink_water_borehole E_drink_water_well E_drink_water_springs E_drink_water_stream E_drink_water_lake E_drink_water_pond_dam E_drink_water_rain_water
screeplot
screeplot, yline(1) ci(het)
predict pc1 pc2 pc3, score

pca E_drink_water_piped E_drink_water_borehole E_drink_water_well E_drink_water_springs E_drink_water_stream E_drink_water_lake E_drink_water_pond_dam E_drink_water_rain_water
screeplot
screeplot, yline(1) ci(het)
graph save Graph "D:\DEE\Dissertation\Quantitative approaches\DATA\Drinking_water_screeplot_Graph.gph"
predict pc11a pc22b, score
//Household Drinking water (distance in minutes and kilometers) data transformations
gen aE_drink_water_piped_km = E_drink_water_piped_km if E_drink_water_piped_km !=888
gen aE_drink_water_piped_min = E_drink_water_piped_min if E_drink_water_piped_min <=61
gen aE_drink_water_borehole_min = E_drink_water_borehole_min if E_drink_water_borehole_min < 360
gen aE_drink_water_borehole_km = E_drink_water_borehole_km if E_drink_water_borehole_km < 45
gen aE_drink_water_well_min = E_drink_water_well_min if E_drink_water_well_min <=360
gen aE_drink_water_well_km = E_drink_water_well_km if E_drink_water_well_km <=15
gen aE_drink_water_springs_min= E_drink_water_springs_min if E_drink_water_springs_min !=888
gen aE_drink_water_springs_km = E_drink_water_springs_km if E_drink_water_springs_km !=888
gen aE_drink_water_stream_min = E_drink_water_stream_min if E_drink_water_stream_min <61
gen aE_drink_water_stream_km = E_drink_water_stream_km if E_drink_water_stream_km !=888
gen aE_drink_water_pond_min = E_drink_water_pond_min if E_drink_water_pond_min <200
gen aE_drink_water_pond_dam_km = E_drink_water_pond_dam_km if E_drink_water_pond_dam_km <18
gen aE_drink_water_rain_water_min = E_drink_water_rain_water_min if E_drink_water_rain_water_min <10
gen aE_drink_water_rain_water_km = E_drink_water_rain_water_km if E_drink_water_rain_water_km !=888

//PCA for livestock drinking water types/sources
pca aE_liv_water_piped aE_liv_water_borehole aE_liv_water_well aE_liv_water_springs aE_liv_water_stream aE_liv_water_pond_dam aE_liv_water_rain_water
screeplot
screeplot, yline(1) ci(het)
predict pc11 pc22 pc33, score

pca aE_liv_water_piped aE_liv_water_borehole aE_liv_water_well aE_liv_water_springs aE_liv_water_stream aE_liv_water_pond_dam aE_liv_water_rain_water
screeplot
screeplot, yline(1) ci(het)
graph save Graph "D:\DEE\Dissertation\Quantitative approaches\DATA\Livestock_water_source_screeplot_Graph.gph"
predict pc1LW pc2LW, score
//Livestock water sources data transformations (Transformation not need HH drinking types)
gen aE_liv_water_piped = E_liv_water_piped if E_liv_water_piped !=888
gen aE_liv_water_borehole = E_liv_water_borehole if E_liv_water_borehole !=888
gen aE_liv_water_well = E_liv_water_well if E_liv_water_well !=888
gen aE_liv_water_springs = E_liv_water_springs if E_liv_water_springs !=888
gen aE_liv_water_stream = E_liv_water_stream if E_liv_water_stream !=888
gen aE_liv_water_lake = E_liv_water_lake if E_liv_water_lake !=888
gen aE_liv_water_pond_dam = E_liv_water_pond_dam if E_liv_water_pond_dam !=888
gen aE_liv_water_rain_water = E_liv_water_rain_water if E_liv_water_rain_water !=888
//Livestock water types(distance in minutes and kilometers) data transformations
gen aE_liv_water_piped_min = E_liv_water_piped_min if E_liv_water_piped_min <180
gen aE_liv_water_piped_km = E_liv_water_piped_km if E_liv_water_piped_km <120
gen aE_liv_water_borehole_min = E_liv_water_borehole_min if E_liv_water_borehole_min !=888
gen aE_liv_water_borehole_km = E_liv_water_borehole_km if E_liv_water_borehole_km <40
gen aE_liv_water_well_min = E_liv_water_well_min if E_liv_water_well_min <500
gen aE_liv_water_well_km = E_liv_water_well_km if E_liv_water_well_km <40
gen aE_liv_water_springs_min = E_liv_water_springs_min if E_liv_water_springs_min !=888
gen aE_liv_water_springs_km = E_liv_water_springs_km if E_liv_water_springs_km !=888
gen aE_liv_water_stream_min = E_liv_water_stream_min if E_liv_water_stream_min <300
gen aE_liv_water_stream_km = E_liv_water_stream_km if E_liv_water_stream_km <45
gen aE_liv_water_pond_min = E_liv_water_pond_min if E_liv_water_pond_min > 1 & E_liv_water_pond_min <400
gen aE_liv_water_pond_dam_km = E_liv_water_pond_dam_km if E_liv_water_pond_dam_km <40
gen aE_liv_water_rain_water_km = E_liv_water_rain_water_km if E_liv_water_rain_water_km !=888
save "D:\DEE\Dissertation\Quantitative approaches\DATA\aaAnalysis_working files\aaNew_21_12_2024_30_10_2024_BLS_Binary_MVreg_data.dta", replace

