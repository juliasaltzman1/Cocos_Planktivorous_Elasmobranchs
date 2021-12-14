#This is the code for the preliminary data visualization graphs for the Cocos Project. The dataset used for this study is property of Undersea Hunter, and is used with their permission, therefore the data is not available online. 

#The ggplot 2 package will be used 
library(ggplot2)
#I also installed a color blind friendly palette
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#This graph shows the number of dive surveys in each lunar phase. 
ggplot(FINAL_Cocos_Dataset_11species, aes(y= LunarPhase, x = IslandCode, fill = LunarPhase, color)) + geom_col() + labs(title= "Dives by Lunar Phase")+ xlab("Total Number of Surveys") + ylab("Lunar Phase")+ scale_fill_manual(values=cbPalette)

#This graph shows the total number of manta rays encountered in each lunar phase.
ggplot(FINAL_Cocos_Dataset_11species, aes(x=LunarPhase)) + 
  geom_col(aes(y= MantaRays,fill=LunarPhase))+ 
  labs(title= "Manta Ray Encounters by Lunar Phase")+ xlab("Lunar Phase") + ylab("Number of Mantas") + scale_fill_manual(values=cbPalette)

#This graph shows the total number of whale sharks encountered in each lunar phase.
ggplot(FINAL_Cocos_Dataset_11species, aes(x=LunarPhase, fill=LunarPhase)) + 
  geom_col(aes(y= Whale.Shark))+ 
  labs(title= "Whale Shark Encounters by Lunar Phase")+ xlab("Lunar Phase") + ylab("Number of Whale Sharks")+ scale_fill_manual(values=cbPalette)

#This graph shows the total number of mobulas encountered in each lunar phase.
ggplot(FINAL_Cocos_Dataset_11species, aes(x=LunarPhase, fill=LunarPhase)) + 
  geom_col(aes(y= MobulaRays))+ 
  labs(title= "Mobula Ray Encounters by Lunar Phase")+ xlab("Lunar Phase") + ylab("Number of Mobulas")+ scale_fill_manual(values=cbPalette)

#This graph shows the total number of scalloped hammerheads encountered in each lunar phase. 
ggplot(FINAL_Cocos_Dataset_11species, aes(x=LunarPhase, fill=LunarPhase)) + 
  geom_col(aes(y= Hammerhead))+ 
  labs(title= "Scalloped Hammerhead Encounters by Lunar Phase")+ xlab("Lunar Phase") + ylab("Number of Hammerheads")+ scale_fill_manual(values=cbPalette)

#This graph shows Mobula Rays by lunar illumination mean and lunar phase.
ggplot(FINAL_Cocos_Dataset_11species, aes(y= LunarIlluminationMean, x = MobulaRays, color = LunarPhase)) + geom_point() + labs(title= "Mobula Rays by Lunar Illumination")+ xlab("Mobulas") + ylab("Lunar Illumination Mean") + scale_colour_manual(values=cbPalette)

#This graph shows Manta Rays by lunar illumination mean and lunar phase
ggplot(FINAL_Cocos_Dataset_11species, aes(y= LunarIlluminationMean, x = MantaRays, color = LunarPhase)) + geom_point() + labs(title= "Manta Rays by Lunar Illumination")+ xlab("Mantas") + ylab("Lunar Illumination Mean") + scale_colour_manual(values=cbPalette)

#This graph shows Hammerheads by lunar illumination mean and lunar phase.
ggplot(FINAL_Cocos_Dataset_11species, aes(y= LunarIlluminationMean, x = Hammerhead, color = LunarPhase)) + geom_point() + labs(title= "Hammerheads by Lunar Illumination")+ xlab("Hammerheads") + ylab("Lunar Illumination Mean") + scale_colour_manual(values=cbPalette)

#This graph shows the distribution of Mobula Rays by lunar phase
ggplot(FINAL_Cocos_Dataset_11species, aes(y= LunarPhase, x = MobulaRays, color=LunarPhase)) + geom_jitter()+labs(title= "Mobula Ray Aggregation Sizes by Lunar Phase")+ xlab("Mobula Rays") + ylab("Lunar Phase") + geom_boxplot() + scale_colour_manual(values=cbPalette)

#This graph shows the distribution of Manta Rays by lunar phase
ggplot(FINAL_Cocos_Dataset_11species, aes(y= LunarPhase, x = MantaRays, color=LunarPhase)) + geom_jitter()+labs(title= "Manta Ray Aggregation Sizes by Lunar Phase")+ xlab("Manta Rays") + ylab("Lunar Phase") + geom_boxplot() + scale_colour_manual(values=cbPalette)

#This graph shows the distribution of Scalloped Hammmerheads by lunar phase
ggplot(FINAL_Cocos_Dataset_11species, aes(y= LunarPhase, x = Hammerhead, color=LunarPhase)) + geom_jitter()+labs(title= "Hammerhead Ray School Sizes by Lunar Phase")+ xlab("Hammerheads") + ylab("Lunar Phase") + geom_boxplot() + scale_colour_manual(values=cbPalette)