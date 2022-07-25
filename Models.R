
Data2020 <- cocos_environmental

# This is the code for the ZINB Models and AIC for Manta Rays and Mobula Rays. Rather than a drop one approach for AIC, we selected biologically sensible models. 

# You can read more about each the the AICcmodavg here: https://cran.r-project.org/web/packages/AICcmodavg/AICcmodavg.pdf

# You can read glmmTMB here: https://cran.r-project.org/web/packages/glmmTMB/glmmTMB.pdf 
# Set Up and Packages  ----------------------------------------------------


install.packages("AICcmodavg")
library(AICcmodavg)
install.packages("lme4")
library(lme4)
install.packages("glmmTMB")
library(glmmTMB)
install.packages("sjPlot")
library(sjPlot)



# Models  -----------------------------------------------------------------


## Mobula Models  ----------------------------------------------------------



MOBA = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 


MOBB = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarIlluminationMean  + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBC = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBD = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBE = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBF = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBG = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBH = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 


### AIC Mobulas ---------------------------------------------------------------------


list <- c("MOBA","MOBB", "MOBC", "MOBD", "MOBE", "MOBF", "MOBG", "MOBH")
cand.set <- list(MOBA, MOBB, MOBC, MOBD, MOBE, MOBF, MOBG, MOBH)

aictab(cand.set, modnames=list, second.ord=TRUE, nobs=NULL, sort=TRUE)

tab_model(MOBA, auto.label = FALSE)
plot(MOBA)

## Manta Models  -----------------------------------------------------------

MANTA = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MANTB = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarIlluminationMean  + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MANTC = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MANTD = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MANTE = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MANTF = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MANTG = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MANTH = glmmTMB( MantaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

tab_model(MANTA, show.ci = FALSE)
### AIC Mantas -----------------------------------------------------------


list <- c("MANTA","MANTB", "MANTC", "MANTD", "MANTE", "MANTF", "MANTG", "MANTH")
cand.set <- list(MANTA, MANTB, MANTC, MANTD, MANTE, MANTF, MANTG, MANTH)

aictab(cand.set, modnames=list, second.ord=TRUE, nobs=NULL, sort=TRUE)


## Whale Shark Models  -----------------------------------------

library(glmmTMB)
WSA = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

WSB = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarIlluminationMean  + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

WSC = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

WSD = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

WSE = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

WSF = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + Temperature + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

WSG = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

WSH = glmmTMB( WhaleSharks ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson )


# ### AIC Whale Sharks ----------------------------------------------------


list <- c("WSA","WSB", "WSC", "WSD", "WSE", "WSF", "WSG", "WSH")
cand.set <- list(WSA, WSB, WSC, WSD, WSE, WSF, WSG, WSH)

aictab(cand.set, modnames=list, second.ord=TRUE, nobs=NULL, sort=TRUE)


