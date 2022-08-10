library(dplyr)
library(tidyverse)

#Importing MechaCar Data
mecha_data <- read.csv("Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)


#Creating a LR for each column VS MPG
# MPG x LENGTH:
lm(mpg ~ vehicle_length, data=mecha_data)
summary(lm(mpg ~ vehicle_length, data=mecha_data))

# MPG x WEIGHT
lm(mpg ~ vehicle_weight, data=mecha_data)
summary(lm(mpg ~ vehicle_weight, data=mecha_data))

# MPG x SPOILER ANGLE
lm(mpg ~ spoiler_angle, data=mecha_data)
summary(lm(mpg ~ spoiler_angle, data=mecha_data))

# MPG x GROUND CLEARANCE
lm(mpg ~ ground_clearance, data=mecha_data)
summary(lm(mpg ~ ground_clearance, data=mecha_data))

# MPG x AWD
lm(mpg ~ AWD, data=mecha_data)
summary(lm(mpg ~ AWD, data=mecha_data))

# General code to get the plot:
ggplot(mecha_data, aes(x=AWD, y=mpg)) + geom_point() + labs(x="AWD", y="Miles Per Gallon (MPG)")

#Multiple Linear Regression to evaluate undependable variables that affect mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_data)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_data))

#Utilizing only significant values in the second multiple linear regression
summary(lm(mpg ~ vehicle_weight + spoiler_angle + AWD, data=mecha_data))

################################################################################
# Suspension Coil DATA
coil_data <- read.csv("Resources/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- coil_data %>% summarize(MeanPSI=mean(PSI),MedianPSI=median(PSI),VarPSI=var(PSI), StdDevPSI = sd(PSI), .groups = 'keep')

lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(MeanPSI=mean(PSI),MedianPSI=median(PSI),VarPSI=var(PSI), StdDevPSI = sd(PSI), .groups = 'keep')

################################################################################
# T-Tests on Suspension Coils


                           