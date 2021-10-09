library('dplyr')
carData <- read.csv(file= 'MechaCar_mpg.csv',check.names= F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight+ spoiler_angle + ground_clearance + AWD +mpg,data = carData)
summary(lm(mpg ~ vehicle_length + vehicle_weight+ spoiler_angle + ground_clearance + AWD +mpg,data = carData))

#Deliverable 2
coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- coil %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3
# determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(coil$PSI, mu= 1500)

#determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(coil,Manufacturing_Lot== "Lot1")$PSI,mu= 1500)

t.test(subset(coil,Manufacturing_Lot== "Lot2")$PSI,mu= 1500)

t.test(subset(coil,Manufacturing_Lot== "Lot3")$PSI,mu= 1500)