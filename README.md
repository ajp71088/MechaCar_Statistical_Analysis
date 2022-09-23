# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Using the  linear models function in R, we can learn about the variables in our MechaCar dataset and how they may influence the miles per gallon.

![image](https://user-images.githubusercontent.com/107162310/191848403-ca88576a-69f6-40c6-bbd2-db84633995c5.png)

Per the results of our summary of the lm() function, vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values (highlighted in yellow in the above screenshot). The other variables in the dataset (vehicle_weight, spoiler_angle_, and AWD) provide a random amount of variance and are therefore do not make a statistically significant impact on mpg. The slope of the linear model is not considered to be zero because the p-value of the model (highlighted in blue) is below the level of statistical significance (0.05). With an R-squared over 0.5 (highlighted in green), this linear model does predict mpg effectively. That said, approximately 71% consistency leaves room for improvement.

## Summary Statistics on Suspension Coils
The MechaCar Suspension Coils datasets contains results from three different production lots. Using R, a summary statistics table was generated to make sure that the variance of the suspension coils across all lots does not exceed 100 pounds per square inch.

![image](https://user-images.githubusercontent.com/107162310/191852062-96e98a09-e0a5-4c3f-bec2-7fbb25f0efe9.png)

![image](https://user-images.githubusercontent.com/107162310/191852100-56b56ba9-6ced-4a76-96f5-3d8fda0524ba.png)

Over all manufacturing lots in total, the current data does meet the design specification. However, using R again to make a summary table for each individual lot indicates that one of the lots has an issue.

![image](https://user-images.githubusercontent.com/107162310/191852393-50176fcc-6fe9-49f1-9566-898e8062b66d.png)

![image](https://user-images.githubusercontent.com/107162310/191852435-fd2d7135-81ab-4407-80c4-e14b4b07f13e.png)

Lot 3's variance vastly exceeds the variance specifications of 100 or fewer. Not only is that detrimental to the product being manufactured, it's also skewing the overall variance to make the variance at the other two lots seem worse than they are.

## T-Tests on Suspension Coils
Using R, a t-test is performed to determine if the PSI across all lots is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/107162310/191854583-cd9dbcf0-91b1-4088-9875-36864b8dfe7a.png)

The overall mean is not statistically different than the population mean. Further t-tests are run on each individual lot to check for statistically differences.

![image](https://user-images.githubusercontent.com/107162310/191857768-646eaba1-380c-4b71-90ff-781190cf5baa.png)

![image](https://user-images.githubusercontent.com/107162310/191857800-eebb9eb3-498d-4cee-b43b-b587fa35fd5b.png)

![image](https://user-images.githubusercontent.com/107162310/191857839-cf523c8b-fda2-4007-8ce7-3f41ac00eb94.png)

Lots 1 & 2 are fine, but Lot 3's PSI does seem to have an issue with a mean of 1496.14 and a p-value below the significance level of 0.05.

## Study Design: MechaCar vs Competition
With high gas costs and inflation impacting consumers, MechaCar should study how their vehicles perform in fuel efficiency compared to their competitors. The null hypothesis of the study would be that there is no statistically significant difference in fuel efficiency between MechaCar vehicles and their competitors. The alternative hypothesis would be that MechaCar vehicles provide statistically significant higher or lower fuel efficiency than their competitors. A two-sample t-test should be used for this study. To perform this study, fuel efficiency data from MechaCar's competitors would need to be collected.
