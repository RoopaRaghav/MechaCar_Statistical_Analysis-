
# Part 1: Linear Regression to Predict MPG
#Use the library() function to load the dplyr package.
library("dplyr")

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar <- read.csv(file="MechaCar_mpg.csv")
head(mechaCar)


#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter


reg <- lm(mpg ~vehicle_length + vehicle_weight + spoiler_angle +
     +     ground_clearance + AWD + mpg, data= mechaCar )

#Using the summary() function, determine the p-value and
#the r-squared value for the linear regression model.
reg
summary(reg)


#Part 2: Create Visualizations for the Trip Analysis
#import and read in the Suspension_Coil.csv file as a table.
suspensionCoil <- read.csv(file="Suspension_Coil.csv")
head(suspensionCoil)


#Write an RScript that creates a total_summary dataframe using the summarize()
#function to get the mean, median, variance, and standard deviation of the
#suspension coil’s PSI column.
summary(suspensionCoil)
totalSummary <- suspensionCoil %>% summarise(mean = mean(PSI),median = median(PSI),
                             sd = sd(PSI),var = var(PSI) , n=n())
totalSummary


lotSummary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarise(mean = mean(PSI),median = median(PSI),
                                             sd = sd(PSI),var = var(PSI) , n=n())
lotSummary
