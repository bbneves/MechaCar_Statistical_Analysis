# MechaCar_Statistical_Analysis

The goal of the analysis is to bring insights for AutosRUs. By performing some statistical analysis utilizing R.


## Linear Regression to Predict MPG

  The MechaCar dataset contains mpg test results for 50 prototype MechaCars. The prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, and ground clearance, were collected for each vehicle.
  
  We'll be evaluating the correlation between each metrics against mpg to find the best match which influences mpg performance.

#### Comparing individual Linear Regressions

    - Vehicle Length:   R-Squared = 0.3715 , p-value = 0.0665.
    - Vehicle Weight:   R-Squared = 0.0082 , p-value = 0.5310.
    - Spolier Angle:    R-Squared = 0.0004 , p-value = 0.8860.
    - Ground Clearance: R-Squared = 0.1081 , p-value = 0.0895.
    - AWD:              R-Squared = 0.0201 , p-value = 0.3260.
    
 Even with R-square values very low, the variable that showed a better chance to a Linear Regression is Vehicle Length and Groud Clearance. 
 
![Rplot](https://user-images.githubusercontent.com/103459820/184396366-b06f6928-f461-410a-8b34-b14c53710265.png)

![ground](https://user-images.githubusercontent.com/103459820/184396410-2ed8bf2e-4dc2-4331-8f78-46bc5c082a1b.png)

#### Multiple Linear Regression

  Multiple linear regression is a statistical model that extends the scope and flexibility of a simple linear regression model. Instead of using a single independent variable to account for all variability observed in the dependent variable, a multiple linear regression uses multiple independent variables to account for parts of the total variance observed in the dependent variable.
  
  ![Screen Shot 2022-08-12 at 12 27 04 PM](https://user-images.githubusercontent.com/103459820/184396676-4ee63366-15ec-4684-b0da-b0c50eefbfa9.png)

 To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values. 
 The R-squared = 0.7149 and the p values for each variable is:
 
    - Vehicle Length:   p-value = 2.60E-12.
    - Vehicle Weight:   p-value = 0.0776.
    - Spolier Angle:    p-value = 0.3069.
    - Ground Clearance: p-value = 5.21E-08.
    - AWD:              p-value = 0.1852.

  Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, Vehicle Lenght and Ground Clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the Vehicle Lenght and Ground Clearance have a significant impact on MPG.
  Despite the number of significant variables, the multiple linear regression model outperformed the simple linear regression. According to the summary output, the r-squared value has increased from 0.31 (the highest single value) in the simple linear regression model to 0.71 in the multiple linear regression model while the p-value remained significant for two variables.

  When an intercept is statistically significant, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero.
  
  The results of these Linear Regressions are not the optimal as it will only predict the right mpg 71% of the time. It sounds like a high percentage, but it doesn't bring confidence in the results. 

## Summary Statistics on Suspension Coils

Summary statistics total:

![Total Summary](https://user-images.githubusercontent.com/103459820/184404323-9707e7b7-36b5-4f40-80fb-05414b2ab5c2.png)

Summary statistics by Lot (total 3 lots):

![Lot Summary](https://user-images.githubusercontent.com/103459820/184404409-8b997d85-11a4-4f03-a972-dc927c1f7e43.png)

  The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
  According to the total summary the variance is in accordance to the requirement of less than 100PSI. However, 62.29 is still a high value, and by furthering investigating the lots separetely:
     - Lot 1 is the best and optimal lot;
     - Lot 2 has a higher variance which it would be enough to evaluate the problem.
     - Lot 3 is extremelly high. And it should defnitely be reavaluated.

## T-Tests on Suspension Coils

  A t-test to compare the mean of one dataset to another under a few assumptions. There are two main forms of the t-test: the one-sample t-test and the two-sample t-test. 
  We will be using the one-sample t-test to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset of 1500 PSI. In other words, a one-sample t-test will test the following hypotheses:

H0 : There is no statistical difference between the observed sample mean and its presumed population mean of 1500PSI.
Ha : There is a statistical difference between the observed sample mean and its presumed population mean. of 1500PSI.

  First, let's compare the whole dataset to the hipotetical popupation mean:
  
  ![All_ttest](https://user-images.githubusercontent.com/103459820/184410462-e3b907be-cf3a-4583-a747-470d3f2c1ecd.png)

Assuming our significance level was the common 0.05 percent, our p-value 0.061 and is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
  But taking in consideration that the Lot 3 is statistically off. Let's evaluate each Lot separetely:
  
  One-sided T-Test:
  - Lot 1: P-value = 1.
  - Lot 2: P-value = 0.6072.
  - Lot 3: P-value = 0.0417.

 This show that the Lot 3 p-values is bellow 0.05. Therefore, we have sufficient evidence to NOT reject the null hypothesis.
 Affirming that there is a statistical difference in products is not a positive results, because the produts should be as similar as possible.
 
## Study Design: MechaCar vs Competition

  Let's start by selecting the metric which would interest the costumers the most: MPG, Vehicle Length (Size), Safety rating, and horse power.
  Than, in order to comepare between competitors, we would make a Chi-Squared Test in teh categories to find different frequencies between the companies.
  Then, we would perform an ANOVA test in this category across all competitors to fil which categories MechaCar is falling behind.
  With these to tests, we would have a good start in evaluating the strategy for next year specifications for the cars.
  
