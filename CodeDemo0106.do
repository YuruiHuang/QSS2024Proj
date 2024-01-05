*Produce the result of table 1 and Figure 2 in main text of "Talent hat, cross-border mobility, and career development" by Huang et. al. 2024

*For effect estimation of mobility and talent
*Set the path to the folder where you hold the dta and do files together
cd "YourPathToDta"
*********************************************
*********************************************
*Returnees-Enrolled vs Returnees-Nonenrolled*
*********************************************
*********************************************
****Paper
use "ReturneesNonenrolledPaper.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe paper treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe paper prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************
****Cits
use "ReturneesNonenrolledCits.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe cits treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe cits prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************
****isQ1
use "ReturneesNonenrolledisQ1.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe isq1 treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe isq1 prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************
****Collaborators
use "ReturneesNonenrolledCollaborators.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe collaborators treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe collaborators prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************


************************************
************************************
*Returnees-Enrolled vs Nonreturnees*
************************************
************************************
****Paper
use "NonreturneesPaper.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe paper treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe paper prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************
****Cits
use "NonreturneesCits.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe cits treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe cits prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************
****isQ1
use "NonreturneesisQ1.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe isq1 treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe isq1 prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************
****Collaborators
use "NonreturneesCollaborators.dta", clear
encode id, gen(id1)
gen diff = dif + 5
tsset id1 diff
xtset id1 diff
*table 1
reghdfe collaborators treatperiod, absorb(id1 diff) vce(cluster id1)
*part of figure 2
reghdfe collaborators prior4treat prior3treat prior2treat prior1treat post1treat post2treat post3treat post4treat post5treat post6treat post7treat post8treat post9treat, absorb(id1 diff) vce(cluster id1)
****************************


*Produce the result of table 2 in main text of "Talent hat, cross-border mobility, and career development" by Huang et. al. 2024

*For effect estimation of mobility and talent  program
*Logistic Regression on the academic performance of scientists selected in this study.
*Set the path to the folder where you hold the dta and do files together
insheet using "AllmergeRegressionTable0106.csv", clear
encode field, gen(nfield)
encode type, gen(ntype)

logit developpub   authordif institutedif topicdif  teamsizedif   i.db_year i.firstpaperyear i.nfield i.ntype

logit developcits   authordif institutedif topicdif  teamsizedif   i.db_year i.firstpaperyear i.nfield i.ntype

logit developisq1   authordif institutedif topicdif  teamsizedif   i.db_year i.firstpaperyear i.nfield i.ntype

logit developcollaborators   authordif institutedif topicdif  teamsizedif   i.db_year i.firstpaperyear i.nfield i.ntype
****************************
****************************