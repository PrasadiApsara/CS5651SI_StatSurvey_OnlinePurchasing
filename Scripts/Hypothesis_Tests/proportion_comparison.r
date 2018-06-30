original_diff = 52/58 - 30/52
print(original_diff)

arr = c(rep(1, 82), rep(0, 28))
print(length(arr))


arr_diff = numeric(10000)
count = 0;

for(i in 1:10000){
  shuffled = sample(arr)
  d = head(shuffled, -52)
  h = tail(shuffled, 52)
  
  
  sum_d = sum(d)
  p_d = sum_d/58
  
  sum_h = sum(h)
  p_h = sum_h/52
  
  diff = p_d - p_h
  arr_diff[i] = diff
  if(diff >= original_diff){
    count = count + 1
  }
}
hist(arr_diff)

p_val = count/10000
print(p_val)

