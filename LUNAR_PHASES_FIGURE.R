
# Set Up and Required Packages --------------------------------------------


install.packages(sjPlot)
library(sjPlot)
install.packages(ggplot2)
library(ggplot2)
install.packages(ggpubr)
library(ggpubr)

# You can learn more about sjPlot here: https://strengejacke.github.io/sjPlot/ 
# You can learn more about ggplot2 here: https://ggplot2.tidyverse.org/ 
# Formatting of figures and other data visualization was assisted by: https://www.data-to-viz.com/ 


# Lunar Phase Figures  ----------------------------------------------------

# Note: Figure made with the top models from this: https://github.com/juliasaltzman1/Cocos_Planktivorous_Elasmobranchs/blob/main/ZINB_Models_AIC.R 

# For mobulas the top model is AAA 

Mobula_LF <- plot_model(AAA, type = "pred", terms = c("LunarPhase"))

MOB_LF_FIG <- Mobula_LF + xlab("Lunar Phase")+ ylab("Predicted Mobula Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"))  + ggtitle("")

# For mantas the top model is DD 

Manta_LF <- plot_model(DD, type = "pred", terms = c("LunarPhase"))

MANTA_LF_FIG <- Manta_LF + xlab("Lunar Phase")+ ylab("Predicted Manta Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"))  + ggtitle("")

# Combining the figures 
LUNAR_PHASE_FIGURE <- ggarrange(MANTA_LF_FIG, MOB_LF_FIG)