#In this code, I add several different lunar cycle parameters to the datasets. This was done using the "lunar" package. More information about the package can be found here: https://cran.r-project.org/web/packages/lunar/lunar.pdf 

#First, I formatted the dates in the data source to be the correct format for the r lunar package. With these lines of code, the dates are formatted correctly as year, month, day. 

library(lubridate)
Format_Date <- as.Date(FINAL_Cocos_Dataset_11species$Date,format = "%m/%d/%Y")
FINAL_Cocos_Dataset_11species$DateNEW = Format_Date

#The Lunar Packages 

library(lunar)

#Throughout this code you will see a "shift 6" this is to account for the time change to Costa Rica from this original dataset. 

FINAL_Cocos_Dataset_11species$LunarDistance= lunar.distance(as.Date(FINAL_Cocos_Dataset_11species$DateNEW), shift = 6)

FINAL_Cocos_Dataset_11species$LunarIlluminationMean = lunar.illumination.mean(as.Date(FINAL_Cocos_Dataset_11species$DateNEW),shift= 6)

FINAL_Cocos_Dataset_11species$LunarPhase = lunar.phase(as.Date(FINAL_Cocos_Dataset_11species$DateNEW), shift= 6, name = TRUE)
