
# for mobulas the top model is "MOBA"
Mobula_LF <- plot_model(MOBA, type = "pred", terms = c("LunarPhase8"))

MOB_LF_FIG <- Mobula_LF + xlab("Lunar Phase")+ ylab("Predicted Mobula Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"),axis.text.x = element_text(angle = 90) )  + ggtitle("")

# for mantas the top model is "MANTA"
Manta_LF <- plot_model(MANTA, type = "pred", terms = c("LunarPhase8"))

MANT_LF_FIG <- Manta_LF + xlab("Lunar Phase")+ ylab("Predicted Manta Count") +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 90))  + ggtitle("")
print(MANT_LF_FIG)

# Combining the figures 
print(MANT_LF_FIG)
print(MOB_LF_FIG)
LUNAR_PHASE_FIGURE <- ggarrange(MANT_LF_FIG, MOB_LF_FIG)
print(LUNAR_PHASE_FIGURE)
