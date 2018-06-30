# Statistical Analysis on Online Purchasing Habits
The purpose of this analysis was to identify how online purchasing habits vary between men and women.
A questionnaire was desinged and distributed among a set of individuals. These individuals were chosen to be those in the age range 20 - 40 and who has access to either a laptop or a mobile device.

Following is a link to the questinnaire : https://goo.gl/forms/UVNOcMDogAv1BR643

The collected samples contained 58 men and 52 women.
They were questioned about the online purchases they have done within the last 6 months.
These samples were then used for testing some of the hypothesis we had about online purchasing habits.

# Scripts

The 'Scripts' folder contains the scripts we used for the analysis. They are written in r and you can simply run them through RStudio.

Scripts/Hypothesis_Tests folder contains the following scripts.

proportion_compariosn.r:

This script is used to test whether men are more likely to do online purchases rather than women. A randomization distribution is constructed and the p-value is calculated using that.

proportion_comparison_confidence_interval:

This script is used to construct a 95% confidence interval for difference in proportions between men and women who has done an online purchase during last 6 months.

mean_noofpurchases_comparision.r:

This script is used to test whether average number of purchases men make are higher than the average number of purchases women make.

Additionally, we did a descriptive analysis using r to gain more insights.
Scripts/Descriptive_Analysis folder contain the script used to generated plots in r, which depict the descriptive statistics.

# Analysis Results

Analysis_Results folder contains the results of the above scripts. 
Analysis_Results/Hypothesis_Tests folder contains images of the distributions and r console output directly copied to text files where you can find the observed figures

Analysis_Results/Descriptive_Analysis folder contains an excel file which contains all the charts plotted using ggplot in r.

# Survey Data

You can find the samples collected through the questionnaire in the Survey Results Folder
