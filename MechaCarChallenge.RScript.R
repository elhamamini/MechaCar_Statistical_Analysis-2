library(tidyverse)

# MPG Analysis
MechaCar_mpg <- read_csv("static/csv/MechaCar_mpg.csv")
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Suspension Coil Analysis
Suspension_Coil <- read_csv("static/csv/Suspension_Coil.csv")
summarize_coil_data <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
View(summarize_coil_data)

# T-Tests on Suspension Coils - all lots
t.test(Suspension_Coil$PSI, mu=mean(Suspension_Coil$PSI))

# T-Tests on Suspension Coils - Lot 1
Lot_1 <- Suspension_Coil[which(Suspension_Coil$Manufacturing_Lot =='Lot1'),]
t.test(Lot_1$PSI, mu=mean(Lot_1$PSI))

# T-Tests on Suspension Coils - Lot 2
Lot_2 <- Suspension_Coil[which(Suspension_Coil$Manufacturing_Lot =='Lot2'),]
t.test(Lot_2$PSI, mu=mean(Lot_2$PSI))

# T-Tests on Suspension Coils - Lot 3
Lot_3 <- Suspension_Coil[which(Suspension_Coil$Manufacturing_Lot =='Lot3'),]
t.test(Lot_3$PSI, mu=mean(Lot_3$PSI))