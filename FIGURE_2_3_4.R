
# Code for Figure 2_3_4 ---------------------------------------------------


install.packages("ggplot2")
library(ggplot2)
install.packages("ggpubr")
library(ggpubr)
install.packages("sjPlot")
library(sjPlot)


#  MOBULA FIGURE  ----------------------------------------------------------

# Start by making a table of the top model 
tab_model(MOBA)

 # parameters were included in this figure if they were determined to be statistically significant based on the global model 

MOB_ONI <- plot_model(MOBA, type = "pred", terms = c("ONI"))

MOB_ONI_FIG <- MOB_ONI +  ylab("Predicted Mobula Count") + xlab("ONI") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_DIVETEMP <- plot_model(MOBA, type = "pred", terms = c("Temperature"))

MOB_DIVETEMP_FIG <- MOB_DIVETEMP +  ylab("Predicted Mobula Count") + xlab("Temperature at Depth of Dive") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")   +
  xlim(20, 35) + ylim(0,2)

MOB_SST <- plot_model(MOBA, type = "pred", terms = c("Temperature"))

MOB_SST_FIG <- MOB_SST +  ylab("Predicted Mobula Count") + xlab("SST") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")+
  xlim(20, 35)+ ylim(0,2)

MOB_SALINITY <- plot_model(MOBA, type = "pred", terms = c("SALINITY"))

MOB_SALINITY_FIG <- MOB_SALINITY +  ylab("Predicted Mobula Count") + xlab("Salinity") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_CHLA <- plot_model(MOBA, type = "pred", terms = c("CHLA"))

MOB_CHLA_FIG <- MOB_CHLA +  ylab("Predicted Mobula Count") + xlab("Chlorophyll A") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_LUNARDIST <- plot_model(MOBA, type = "pred", terms = c("LunarDistance"))

MOB_LUNARDIST_FIG <- MOB_LUNARDIST +  ylab("Predicted Mobula Count") + xlab("Lunar Distance") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_CURRENT <- plot_model(MOBA, type = "pred", terms = c("CurrentCode"))

MOB_CURRENT_FIG <- MOB_LUNARDIST +  ylab("Predicted Mobula Count") + xlab("Current") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_VIS <- plot_model(MOBA, type = "pred", terms = c("Visibility"))

MOB_VIS_FIG <- MOB_VIS +  ylab("Predicted Mobula Count") + xlab("Visibility") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MOB_YEAR <- plot_model(MOBA, type = "pred", terms = c("Year.y"))

MOB_YEAR_FIG <- MOB_YEAR +  ylab("Predicted Mobula Count") + xlab("Year") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


MOBULA_SIGS <- ggarrange(MOB_ONI_FIG, MOB_DIVETEMP_FIG, MOB_SST_FIG, MOB_SALINITY_FIG, MOB_CHLA_FIG, MOB_LUNARDIST_FIG, MOB_CURRENT_FIG, MOB_VIS_FIG) 
print(MOBULA_SIGS)


# MANTA FIGURE ------------------------------------------------------------
# Start by making a table of the top model 

tab_model(MANTA)

# parameters were included in this figure if they were determined to be statistically significant based on the global model 

MANT_DIVETEMP <- plot_model(MANTA, type = "pred", terms = c("Temperature"))


MANT_DIVETEMP_FIG <- MANT_DIVETEMP +  ylab("Predicted Manta Count") + xlab("Temperature at Depth of Dive") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")  +
  xlim(20, 35)+ ylim(0,1)


MANT_SST <- plot_model(MANTA, type = "pred", terms = c("Temperature"))

MANT_SST_FIG <- MANT_SST +  ylab("Predicted Manta Count") + xlab("SST") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")+ xlim(20, 35)+ ylim(0,1)


MANT_LUNARDIST <- plot_model(MANTA, type = "pred", terms = c("LunarDistance"))

MANT_LUNARDIST_FIG <- MANT_LUNARDIST +  ylab("Predicted Manta Count") + xlab("Lunar Distance") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


MANT_VIS <- plot_model(MANTA, type = "pred", terms = c("Visibility"))

MANT_VIS_FIG <- MANT_VIS +  ylab("Predicted Manta Count") + xlab("Visibility") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANT_YEAR <- plot_model(MANTA, type = "pred", terms = c("Year.y"))

MANT_YEAR_FIG <- MANT_YEAR +  ylab("Predicted Manta Count") + xlab("Year") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

MANT_DAY <- plot_model(MANTA, type = "pred", terms = c("StudyJulianDate"))

MANT_DAY_FIG <- MANT_DAY +  ylab("Predicted Manta Count") + xlab("Study Julian Date") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


Manta_SIGS <- ggarrange( MANT_DIVETEMP_FIG, MANT_SST_FIG, MANT_LUNARDIST_FIG,  MANT_VIS_FIG)
print(Manta_SIGS)


# WHALE SHARK FIGURE  -----------------------------------------------------

# Start by making a table of the top model 
tab_model(WSA)

WS_ONI <- plot_model(WHALAA, type = "pred", terms = c("ONI"))

WS_ONI_FIG <- WS_ONI +  ylab("Predicted Whale Shark Count") + xlab("ONI") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")

WS_TEMP <- plot_model(WHALAA, type = "pred", terms = c("Temperature"))

WS_TEMP_FIG <- WS_TEMP +  ylab("Predicted Whale Shark Count") + xlab("Temperature at Depth") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("") +
  xlim(20, 35) + ylim(0,.05)

WS_CHLA <- plot_model(WHALAA, type = "pred", terms = c("CHLA"))

WS_CHLA_FIG <- WS_CHLA + ylab("Predicted Whale Shark  Count") + xlab("Chlorophyll A") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("") 

WS_VIS <- plot_model(WHALAA, type = "pred", terms = c("Visibility"))

WS_VIS_FIG <- WS_VIS + xlab("Visibility Meters") + ylab("Predicted Whale Shark  Count")+ theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + theme_sjplot() + ggtitle("")


WS_SIGS <- ggarrange(WS_ONI_FIG, WS_TEMP_FIG, WS_CHLA_FIG, WS_VIS_FIG)
print(WS_SIGS)

