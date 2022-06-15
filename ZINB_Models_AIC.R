# Set Up and Required Packages --------------------------------------------


# This is the code for the ZINB Models and AIC for Manta Rays and Mobula Rays. Rather than a drop one approach for AIC, we selected biologically sensible models. 

# You can read more about each the the AICcmodavg here: https://cran.r-project.org/web/packages/AICcmodavg/AICcmodavg.pdf

# You can read glmmTMB here: https://cran.r-project.org/web/packages/glmmTMB/glmmTMB.pdf 

install.packages(AICcmodavg) 
library(AICcmodavg)
install.packages(glmmTMB)
install.packages(bbmle)
library(glmmTMB)


# Manta Rays --------------------------------------------------------------

AA = glmmTMB( MantaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(AA)
BB = glmmTMB( MantaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(BB)
CC = glmmTMB( MantaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY +  VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius +  (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(CC)
DD = glmmTMB( MantaRays ~ TEMP + ElNinoIndex + CHLA + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(DD)
EE = glmmTMB( MantaRays ~ TEMP + ElNinoIndex +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(EE)
FF = glmmTMB( MantaRays ~  ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(FF)
GG = glmmTMB( MantaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(GG)
HH = glmmTMB( MantaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(HH)
AICtab(AA,BB,CC,DD,EE,FF,GG,HH)


# Mobula Rays  ------------------------------------------------------------


AAA = glmmTMB( MobulaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(AAA)


BBB = glmmTMB( MobulaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(BBB)
CCC = glmmTMB( MobulaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY +  VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius +  (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(CCC)
DDD = glmmTMB( MobulaRays ~ TEMP + ElNinoIndex + CHLA + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(DDD)
EEE = glmmTMB( MobulaRays ~ TEMP + ElNinoIndex +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(EEE)
FFF = glmmTMB( MobulaRays ~  ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(FFF)
GGG = glmmTMB( MobulaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean + VisibilityMeters + CurrentCode  + Year.x + SIN_JULIAN + COS_JULIAN + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson )
summary(GGG)
HHH = glmmTMB( MobulaRays ~ TEMP + ElNinoIndex + CHLA +  SALINITY + LunarIlluminationMean  + Year.x + SIN_JULIAN + COS_JULIAN + SeaTempCelsius + LunarPhase + LunarDistance + (1|SiteCode)+(1|DiverCode), data = GCE, ziformula = ~1, family=poisson ) 
summary(HHH)
AIC_MOBULAS <- AICtab(AAA,BBB,CCC,DDD,EEE,FFF,GGG,HHH)
