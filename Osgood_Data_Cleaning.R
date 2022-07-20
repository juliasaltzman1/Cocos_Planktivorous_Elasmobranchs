

# Data Cleaning -----------------------------------------------------------

# Removing Negative 1 which was an indicator of 0 in Osgood's models 
cocos_environmental$MobulaRays[cocos_environmental$MobulaRays < 0] <- 0 
cocos_environmental$MantaRays[cocos_environmental$MantaRays < 0] <- 0
cocos_environmental$WhaleSharks[cocos_environmental$WhaleSharks < 0] <- 0
cocos_environmental$Hammerheads[cocos_environmental$Hammerheads < 0] <- 0
cocos_environmental$Whitetips[cocos_environmental$Whitetips < 0] <- 0
cocos_environmental$MarbledRays[cocos_environmental$MarbledRays < 0] <- 0
cocos_environmental$EagleRays[cocos_environmental$EagleRays < 0] <- 0
cocos_environmental$Turtles[cocos_environmental$Turtles < 0] <- 0
cocos_environmental$Silky[cocos_environmental$Silky < 0] <- 0
cocos_environmental$Silvertips[cocos_environmental$Silvertips < 0] <- 0
cocos_environmental$Blacktips[cocos_environmental$Blacktips < 0] <- 0
cocos_environmental$Galapagos[cocos_environmental$Galapagos< 0] <- 0
cocos_environmental$TigerSharks[cocos_environmental$TigerSharks< 0] <- 0

#double check and make sure it works! 

range(cocos_environmental$MobulaRays, na.rm = TRUE)
range(cocos_environmental$MantaRays, na.rm = TRUE)
range(cocos_environmental$WhaleSharks, na.rm = TRUE)
range(cocos_environmental$Hammerheads, na.rm = TRUE)
range(cocos_environmental$Whitetips, na.rm = TRUE)
range(cocos_environmental$MarbledRays, na.rm = TRUE)
range(cocos_environmental$EagleRays, na.rm = TRUE)
range(cocos_environmental$Turtles, na.rm = TRUE)
range(cocos_environmental$Silky, na.rm = TRUE)
range(cocos_environmental$Silvertips, na.rm = TRUE)
range(cocos_environmental$Blacktips, na.rm = TRUE)
range(cocos_environmental$Galapagos, na.rm = TRUE)
range(cocos_environmental$TigerSharks, na.rm = TRUE)
