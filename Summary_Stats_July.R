
# SUMMARY STATISTICS  -----------------------------------------------------

Data2020$MANTA_PA = ifelse(Data2020$MantaRays > 0, "1", "0")
Data2020$MOBULA_PA = ifelse(Data2020$MobulaRays > 0, "1", "0")
Data2020$MANTA_PA = as.numeric(Data2020$MANTA_PA)
Data2020$MOBULA_PA= as.numeric(Data2020$MOBULA_PA)

Probablity_of_Detection_Mantas = mean(Data2020$MANTA_PA, na.rm = TRUE)*100
print(Probablity_of_Detection_Mantas)
Probablity_of_Detection_Mobulas= mean(Data2020$MOBULA_PA)*100
Probablity_of_Detection_Whales= mean(Data2020$Whale.Shark)*100


sum(Data2020$MANTA_PA, na.rm = TRUE)
sum(Data2020$MOBULA_PA,  na.rm = TRUE)
sum(Data2020$MobulaRays,  na.rm = TRUE)
sum(Data2020$WhaleSharks_PA,  na.rm = TRUE)

range(Data2020$SST)
mean(Data2020$SST)

range(Data2020$Temperature, na.rm = TRUE)
mean(Data2020$Temperature, na.rm = TRUE)

range(Data2020$ONI, na.rm = TRUE)
mean(Data2020$ONI, na.rm = TRUE)

range(Data2020$SALINITY, na.rm = TRUE)
mean(Data2020$SALINITY, na.rm = TRUE)

range(Data2020$LunarDistance, na.rm = TRUE)
mean(Data2020$LunarDistance, na.rm = TRUE)


range(Data2020$LunarIlluminationMean, na.rm = TRUE)
mean(Data2020$LunarIlluminationMean, na.rm = TRUE)
print(Manta_SIGS)
print(MOBULA_SIGS)

