# First, I formatted the dates in the data source to be the correct format for the r lunar package. With these lines of code, the dates are formatted correctly as year, month, day. 

library(lubridate)
Format_Date <- as.Date(FINAL_Cocos_Dataset_11species$Date,format = "%m/%d/%Y")
FINAL_Cocos_Dataset_11species$DateNEW = Format_Date

#The Lunar Packages 

library(lunar)

FINAL_Cocos_Dataset_11species$LunarDistance= lunar.distance(as.Date(FINAL_Cocos_Dataset_11species$DateNEW), shift = 6)

FINAL_Cocos_Dataset_11species$LunarIlluminationMean = lunar.illumination.mean(as.Date(FINAL_Cocos_Dataset_11species$DateNEW),shift= 6)

FINAL_Cocos_Dataset_11species$LunarPhase = lunar.phase(as.Date(FINAL_Cocos_Dataset_11species$DateNEW), shift= 6, name = TRUE)
