library(tidyverse)

# MPG Analysis
MechaCar_mpg <- read_csv("static/csv/MechaCar_mpg.csv")
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Suspension Coil Analysis
Suspension_Coil <- read_csv("static/csv/Suspension_Coil.csv")
summarize_coil_data <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
View(summarize_coil_data)
