#Created by: Julia Saltzman 
#Last edited: 20-July-2022


# This is the code for the ZINB Models and AIC for Manta Rays and Mobula Rays. Rather than a drop one approach for AIC, we selected biologically sensible models. 

# You can read more about each the the AICcmodavg here: https://cran.r-project.org/web/packages/AICcmodavg/AICcmodavg.pdf

# You can read glmmTMB here: https://cran.r-project.org/web/packages/glmmTMB/glmmTMB.pd

# Mobula Models  ----------------------------------------------------------


MOBA = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 


MOBB = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarIlluminationMean  + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBC = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBD = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBE = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBF = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBG = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + CurrentCode + Visibility + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

MOBH = glmmTMB( MobulaRays ~ SIN_TIME + COS_TIME + ONI + Temperature + SST + SALINITY + CHLA + LunarDistance + LunarIlluminationMean + LunarPhase8 + Year.y + StudyJulianDate + (1|SiteCode) + (1|DiverCode), data = Data2020, ziformula = ~1, family=poisson ) 

aictab(MOBA, MOBB, MOBC, MOBD, MOBE, MOBF, MOBG, MOBH)
