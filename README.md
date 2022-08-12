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


## Summary Statistics on Suspension Coils


## T-Tests on Suspension Coils


## Study Design: MechaCar vs Competition
