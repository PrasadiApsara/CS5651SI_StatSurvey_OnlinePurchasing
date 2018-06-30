#ploting packages
library(ggplot2)
library(scales)

#reading data file
response = read.csv(file.choose(), header = TRUE)

#subsetting the data set
response1 = response[response$online_purchase_status == 'Yes',]

#Gender composition
gender = data.frame(table(response$gender))
colnames(gender) = c('Group','count')

gender$percentage = (gender$count/sum(gender$count))*100
gender

bp<- ggplot(gender, aes(x="", y=percentage, fill=Group))+geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
pie = pie +scale_fill_brewer(palette="Dark2")
pie = pie+ggtitle('') +
  labs(x="",y="") 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = percentage/2 + c(0, cumsum(percentage)[-length(percentage)]), 
                label = percent(percentage/100)), size=5)


				
				
				
				
#####################################################################
#online_purchase_status
online_purchase_status = data.frame(table(response$online_purchase_status))
colnames(online_purchase_status) = c('Group','count')

online_purchase_status$percentage = (online_purchase_status$count/sum(online_purchase_status$count))*100
online_purchase_status


bp<- ggplot(online_purchase_status, aes(x="", y=percentage, fill=Group))+geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
pie = pie +scale_fill_brewer(palette="Dark2")
pie = pie+ggtitle("") +
  labs(x="",y="") 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = percentage/2 + c(0, cumsum(percentage)[-length(percentage)]), 
                label = percent(percentage/100)), size=5)


				
				
				
				
				
#####################################################################				
#sixmonths_purchasing_status
six_month_status = data.frame(table(response$X6months_status))
colnames(six_month_status) = c('Group','count')

six_month_status$percentage = (six_month_status$count/sum(six_month_status$count))*100
six_month_status

bp<- ggplot(six_month_status, aes(x="", y=percentage, fill=Group))+geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
pie = pie +scale_fill_brewer(palette="Dark2")
pie = pie+ggtitle("") +
  labs(x="",y="") 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = percentage/2 + c(0, cumsum(percentage)[-length(percentage)]), 
                label = percent(percentage/100)), size=5)


				
				
				
				
				
#####################################################################				
#vendor type
six_month_status = data.frame(table(response$X6months_status))
colnames(six_month_status) = c('Group','count')

six_month_status$percentage = (six_month_status$count/sum(six_month_status$count))*100
six_month_status
bp<- ggplot(six_month_status, aes(x="", y=percentage, fill=Group))+geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
pie = pie +scale_fill_brewer(palette="Dark2")


pie = pie+ggtitle("") +
  labs(x="",y="") 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = percentage/2 + c(0, cumsum(percentage)[-length(percentage)]), 
                label = percent(percentage/100)), size=5)







source("http://pcwww.liv.ac.uk/~william/R/crosstab.r")
crosstab(response, row.vars = "6month_status", col.vars = "online_purchase_status", type = "r")


female_df <- data.frame(response=c('Female','Female'),Group = c("No", "yes"),value = c(22,78))
male_df <- data.frame(response=c('Male','Male'),Group = c("No", "yes"),value = c(5.17,94.83))
df= rbind(male_df,female_df)
# Barplot
bp<- ggplot(male_df, aes(x="", y=value, fill=Group))+
  geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
#pie = pie +scale_fill_brewer(palette="Dark2")
pie = pie+ggtitle("") +
 labs(x="",y='') 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = value/3 + c(0, cumsum(value)[-length(value)]), 
                label = percent(value/100)), size=5)




bp<- ggplot(female_df, aes(x="", y=value, fill=Group))+
  geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
#pie = pie +scale_fill_brewer(palette="Dark2")
pie = pie+ggtitle("") +
  labs(x="",y='') 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = value/3 + c(0, cumsum(value)[-length(value)]), 
                label = percent(value/100)), size=5)



				
				
				
#####################################################################
#six_month_status male vs female
crosstab(response, row.vars = "a", col.vars = "X6months_status", type = "r")


female_df <- data.frame(response=c('Female','Female'),Group = c("No", "yes"),value = c(42,58))
male_df <- data.frame(response=c('Male','Male'),Group = c("No", "yes"),value = c(10.34,89.66))
df= rbind(male_df,female_df)
# Barplot
bp<- ggplot(male_df, aes(x="", y=value, fill=Group))+
  geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
#pie = pie +scale_fill_brewer(palette="Dark2")
pie = pie+ggtitle("") +
  labs(x="",y='') 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = value/3 + c(0, cumsum(value)[-length(value)]), 
                label = percent(value/100)), size=5)




bp<- ggplot(female_df, aes(x="", y=value, fill=Group))+
  geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
#pie = pie +scale_fill_brewer(palette="Dark2")
pie = pie+ggtitle("") +
  labs(x="",y='') 

pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = value/3 + c(0, cumsum(value)[-length(value)]), 
                label = percent(value/100)), size=5)


				



				
#####################################################################
#vendors_type male vs female
response1 = response[response$online_purchase_status == 'Yes',]
vendors_type = data.frame(table(response1$vendors_type))
colnames(vendors_type) = c('Group','count')

vendors_type$percentage = (vendors_type$count/sum(vendors_type$count))*100
vendors_type = vendors_type[2:4,]



bp<- ggplot(vendors_type, aes(x="", y=percentage, fill=Group))+geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start=0)
#pie = pie + scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9"))
pie = pie+ggtitle('') +
  labs(x="",y="") 


pie+theme(axis.text.x=element_blank()) +
  geom_text(aes(y = percentage/2 + c(0, cumsum(percentage)[-length(percentage)]), 
                label = percent(percentage/100)), size=5)
				

######################################################################
#international e-commerce platforms
international_e.commerce_platform = data.frame(table(response1$international_e.commerce_platform))
colnames(international_e.commerce_platform) = c('Group','count')

international_e.commerce_platform$percentage = round((international_e.commerce_platform$count/sum(international_e.commerce_platform$count))*100)
international_e.commerce_platform = international_e.commerce_platform[2:9,]



bp<- ggplot(international_e.commerce_platform, aes(x=Group, y=percentage, fill=Group))+geom_bar(stat="identity")+theme_minimal()
bp
bp= bp+ggtitle('') +
  labs(x="",y="") 


bp+geom_text(aes(label=percent(percentage/100)), vjust=1.6, color="white",
             position = position_dodge(0.9), size=3.5)


###################################################
#local e-commerce platform
local_e.commerce_platform= data.frame(table(response1$local_e.commerce_platform))
colnames(local_e.commerce_platform) = c('Group','count')

local_e.commerce_platform$percentage = round((local_e.commerce_platform$count/sum(local_e.commerce_platform$count))*100)
local_e.commerce_platform = local_e.commerce_platform[2:9,]

p<-ggplot(df, aes(x=dose, y=len, fill=dose)) +
  geom_bar(stat="identity")+theme_minimal()

bp<- ggplot(local_e.commerce_platform, aes(x=Group, y=percentage, fill=Group))+geom_bar(stat="identity")+theme_minimal()
bp
bp= bp+ggtitle('') +
  labs(x="",y="") 


bp+geom_text(aes(label=percent(percentage/100)), vjust=1.6, color="white",
             position = position_dodge(0.9), size=3.5)
			 
			 
			 

####################################################################################
#direct purchases from vendors
directly_from_vendor.s= data.frame(table(response1$directly_from_vendor.s))
colnames(directly_from_vendor.s) = c('Group','count')

directly_from_vendor.s$percentage = round((directly_from_vendor.s$count/sum(directly_from_vendor.s$count))*100)
directly_from_vendor.s= directly_from_vendor.s[2:3,]

p<-ggplot(df, aes(x=dose, y=len, fill=dose)) +
  geom_bar(stat="identity")+theme_minimal()

bp<- ggplot(directly_from_vendor.s, aes(x=Group, y=percentage, fill=Group))+geom_bar(stat="identity")+theme_minimal()
bp

bp+geom_text(aes(label=percent(percentage/100)), vjust=1.6, color="white",
             position = position_dodge(0.9), size=3.5)
			 
			 
			 
			 
###################################################################################
#maximum_amount_LKRlocal_e-commerce_platform
local_e_commerce_platform= data.frame(table(response1$local_e.commerce_platform))
colnames(local_e_commerce_platform) = c('Group','count')

local_e_commerce_platform$percentage = round((local_e_commerce_platform$count/sum(local_e_commerce_platform$count))*100)
local_e_commerce_platform= local_e_commerce_platform[2:11,]

p<-ggplot(df, aes(x=dose, y=len, fill=dose)) +
  geom_bar(stat="identity")+theme_minimal()

bp<- ggplot(local_e_commerce_platform, aes(x=Group, y=percentage, fill=Group))+geom_bar(stat="identity")+theme_minimal()
bp

bp+geom_text(aes(label=percent(percentage/100)), vjust=1.6, color="white",
             position = position_dodge(0.9), size=3.5)
			 
			 
			 
			 

#################################################################################
#no of items histogram
ggplot(response1, aes(x=no_items))+
  geom_histogram(color="darkblue", fill="orange")


ggplot(response1[response1$gender=='Female',], aes(x=no_items)) +
  geom_histogram(color="darkblue", fill="yellow")


p<-ggplot(response1, aes(x='', y=no_items, color='')) +
  geom_boxplot()
p= p+ggtitle('') +
  labs(x="") 
p


p<-ggplot(response1, aes(y=no_items)) +
  geom_boxplot()
p

