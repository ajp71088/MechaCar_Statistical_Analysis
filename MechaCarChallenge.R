#Deliverable 1

library(dplyr)

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar) #create linear model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar)) #summarize linear model

#Deliverable 2

SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Create a summary dataframe
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI),
                                              Median=median(PSI),
                                              Variance=var(PSI),
                                              SD=sd(PSI))

#Create a lot summary dataframe
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                            Median=median(PSI),
                                                                            Variance=var(PSI),
                                                                            SD=sd(PSI))

#Deliverable 3

t.test(SuspensionCoil$PSI,mu=1500) #t.test to find if PSI across all lots is statistically different from the population mean of 1500

#Three more t.tests to find if PSI for each lot is statistically different from the population mean of 1500
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot1')$PSI,mu=1500)
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot2')$PSI,mu=1500)
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot3')$PSI,mu=1500)