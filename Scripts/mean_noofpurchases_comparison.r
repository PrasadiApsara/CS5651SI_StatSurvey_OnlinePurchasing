DMales = read.csv('E:/Projects/MSc/Stat/StatSurvey_OnlinePurchasing/Survey Results/Modified_Samples/male_sample.csv', header = TRUE, sep = ",")
DFemales = read.csv('E:/Projects/MSc/Stat/StatSurvey_OnlinePurchasing/Survey Results/Modified_Samples/female_sample.csv', header = TRUE, sep = ",")

male_purchases = DMales$ItemsPurchased
female_purchases = DFemales$ItemsPurchased

mean_male_purchases = mean(male_purchases)
print(mean_male_purchases)

mean_female_purchases = mean(female_purchases)
print(mean_female_purchases)

original_diff = mean_male_purchases - mean_female_purchases
print(original_diff)

mean_arr = numeric(10000)

combined = c(male_purchases, female_purchases)

count = 0

for(i in 1:10000){
  shuffled = sample(combined)
  d = head(shuffled, -52)
  h = tail(shuffled, 52)
  
  mean_diff = (mean(d) - mean(h))
  mean_arr[i] = mean_diff
  
  if(mean_diff >= original_diff){
    count = count + 1
  }
}

hist(mean_arr)

p_val = count/10000
print(p_val)