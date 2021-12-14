#In this code, I do a preliminary generalized linear model. I followed the protocol from the "GLM and GAM for Count Data" chapter in "Mixed effects models and extensions in ecology with R". This can be found here: https://link.springer.com/chapter/10.1007/978-0-387-87458-6_9  

plot(FINAL_Cocos_Dataset_11species$LunarIlluminationMean,FINAL_Cocos_Dataset_11species$MantaRays, xlab = "Lunar Illumination Mean", ylab = "Manta Rays") 
M1 <- glm(MantaRays ~ LunarIlluminationMean, family = poisson, data = FINAL_Cocos_Dataset_11species)
summary(M1)
plot(M1)

#Code from: Zuur A.F., Ieno E.N., Walker N.J., Saveliev A.A., Smith G.M. (2009) GLM and GAM for Count Data. In: Mixed effects models and extensions in ecology with R. Statistics for Biology and Health. Springer, New York, NY. https://doi.org/10.1007/978-0-387-87458-6_9