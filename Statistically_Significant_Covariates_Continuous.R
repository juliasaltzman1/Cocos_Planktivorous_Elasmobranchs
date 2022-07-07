# Set Up and Required Packages  -------------------------------------------

install.packages(sjPlot)
library(sjPlot)
install.packages(ggplot2)
library(ggplot2)
install.packages(ggpubr)
library(ggpubr)
install.packages(prediction)
library(prediction)

# You can learn more about sjPlot here: https://strengejacke.github.io/sjPlot/ 
# You can learn more about ggplot2 here: https://ggplot2.tidyverse.org/ 
# Formatting of figures and other data visualization was assisted by: https://www.data-to-viz.com/ 




# Statistically Significant Relationship Figures --------------------------


## Whale Shark Significant Relationships  ----------------------------------------

# Note: Figure made with the top models from this: https://github.com/juliasaltzman1/Cocos_Planktivorous_Elasmobranchs/blob/main/Binomial_Models_AIC.R
# Top Model for Whale Sharks is WSCC

WS_TEMP <- plot_model(WSCC, type = "pred", terms = c("TEMP"))

WS_TEMP_FIG <- WS_TEMP +  ylab("Probability of Whale Shark Encounter") + xlab("Mean Monthly SST") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

WS_NINO <- plot_model(WSCC, type = "pred", terms = c("ElNinoIndex"))

WS_NINO_FIG <- WS_NINO +  ylab("Probability of Whale Shark Encounter") + xlab("Ocean Niño Index") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

WS_SALINITY <- plot_model(WSCC, type = "pred", terms = c("SALINITY"))

WS_SALINITY_FIG <- WS_SALINITY +  ylab("Probability of Whale Shark Encounter") + xlab("Salinity") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

WS_VIS <- plot_model(WSCC, type = "pred", terms = c("VisibilityMeters"))

WS_VIS_FIG <- WS_VIS +  ylab("Probability of Whale Shark Encounter") + xlab("Visibility") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

WS_YEAR <- plot_model(WSCC, type = "pred", terms = c("Year.x"))

WS_YEAR_FIG <- WS_YEAR +  ylab("Probability of Whale Shark Encounter") + xlab("Year") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

WS_SIGS <- ggarrange(WS_TEMP_FIG, WS_NINO_FIG, WS_SALINITY_FIG, WS_VIS_FIG, WS_YEAR_FIG, whale_shark_image)


## Mobula Ray Significant Relationships  ------------------------------------
# Note: Figure made with the top models from this: https://github.com/juliasaltzman1/Cocos_Planktivorous_Elasmobranchs/blob/main/ZINB_Models_AIC.R 

# For mobulas the top model is AAA

MOB_TEMP <- plot_model(AAA, type = "pred", terms = c("TEMP"))

MOB_TEMP_FIG <- MOB_TEMP +  ylab("Predicted Mobula Count") + xlab("Mean Monthly SST") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_CHLA <- plot_model(AAA, type = "pred", terms = c("CHLA"))

MOB_CHLA_FIG <- MOB_CHLA + ylab("Predicted Mobula Count") + xlab("Chlorophyll A") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


MOB_SAL <- plot_model(AAA, type = "pred", terms = c("SALINITY"))

MOB_SAL_FIG <- MOB_SAL + ylab("Predicted Mobula Count") + xlab("Salinity") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_LIM <- plot_model(AAA, type = "pred", terms = c("LunarIlluminationMean"))

MOB_LIM_FIG <- MOB_LIM + ylab("Predicted Mobula Count") + xlab("Lunar Illumination Mean") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_VIS <- plot_model(AAA, type = "pred", terms = c("VisibilityMeters"))

MOB_VIS_FIG <- MOB_VIS + xlab("Visibility Meters") + ylab("Predicted Mobula Count")+ theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_CUR <- plot_model(AAA, type = "pred", terms = c("CurrentCode"))

MOB_CUR_FIG <- MOB_CUR + xlab("Current Code")+ ylab("Predicted Mobula Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


MOB_DT <- plot_model(AAA, type = "pred", terms = c("SeaTempCelsius"))

MOB_DT_FIG <- MOB_DT + xlab("Temperature at Depth")+ ylab("Predicted Mobula Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_SEASON <- plot_model(AAA, type = "pred", terms = c("SIN_JULIAN"))

MOB_SEASON_FIG <- MOB_SEASON + xlab("SIN Julian Date")+ ylab("Predicted Mobula Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


MOB_LD<- plot_model(AAA, type = "pred", terms = c("LunarDistance"))

library(sjPlot)

plot_model(AAA, type = "pred", terms = c("LunarPhase"))

MOB_LD_FIG <- MOB_LD + xlab("Lunar Distance")+ ylab("Predicted Mobula Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOBULA_SIGS <- ggarrange(MOB_CUR_FIG, MOB_VIS_FIG , MOB_LIM_FIG,MOB_SAL_FIG, MOB_CHLA_FIG, MOB_TEMP_FIG, MOB_DT_FIG, MOB_LD_FIG)

print(MOBULA_SIGS)


MOB_LF_FIG <- plot_model(AAA, type = "pred", terms = c("LunarPhase"))+ xlab("Lunar Phase")+ ylab("Predicted Count of Mobula Rays") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_LF_FIG <- plot_model(AAA, type = "pred", terms = c("LunarPhase"))+ xlab("Lunar Phase")+ ylab("Predicted Count of Mobula Rays") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


## Manta Ray Significant Relationships  -------------------------------------

# Note: Figure made with the top models from this: https://github.com/juliasaltzman1/Cocos_Planktivorous_Elasmobranchs/blob/main/ZINB_Models_AIC.R 

# For mantas the top model is DD


MANTA_TEMP <- plot_model(DD, type = "pred", terms = c("TEMP"))

MANTA_TEMP_FIG <- MANTA_TEMP +  ylab("Predicted Manta Count") + xlab("Mean Monthly SST") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANTA_YEAR <- plot_model(DD, type = "pred", terms = c("Year.x"))

MANTA_YEAR_FIG <- MANTA_YEAR +  ylab("Predicted Manta Count") + xlab("Study Year") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANTA_VIS <- plot_model(DD, type = "pred", terms = c("VisibilityMeters"))

MANTA_VIS_FIG <- MANTA_VIS + xlab("Visibility Meters") + ylab("Predicted Manta Count")+ theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANTA_SEASON <- plot_model(DD, type = "pred", terms = c("COS_JULIAN"))

MANTA_SEASON_FIG <- MANTA_SEASON + xlab("COS Julian Date")+ ylab("Predicted Manta Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANTA_DT <- plot_model(DD, type = "pred", terms = c("SeaTempCelsius"))

MANTA_DT_FIG <- MANTA_DT + xlab("Temperature at Depth")+ ylab("Predicted Manta Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANTA_LD<- plot_model(DD, type = "pred", terms = c("LunarDistance"))

MANTA_LD_FIG <- MANTA_LD + xlab("Lunar Distance")+ ylab("Predicted Manta Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANTA_SIGS <- ggarrange(MANTA_TEMP_FIG, MANTA_YEAR_FIG, MANTA_VIS_FIG, MANTA_DT_FIG, MANTA_LD_FIG)

