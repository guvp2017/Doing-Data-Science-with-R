
## HW4_Question 1: FiveThirtyEight Data

# 1a. Install the fivethirtyeight package
install.packages("fivethirtyeight")
library(fivethirtyeight)

# 1b. In the list of Data sets in package 'fivethirtyeight', assign the 18th data set to an object 'df'
dp <- data(package="fivethirtyeight")
df <- college_recent_grads
df

# 1c. Use a more detailed list of the data sets to write out the URL in a comment to the relaed news story
vignette("fivethirtyeight", package = "fivethirtyeight")

# 1d. Give the diamensions and column names of this data frame 
dim(df)
colnames(df)

## HW4_Question 2: Data summary

# 2a.Column counts after column names of the data frame
colnames(df)
ncol(df)

# 2b.Generate a count of each unique major_category in the data frame
install.packages("plyr")
library("plyr")
require(plyr)

major_count <- as.data.frame(table(df$major_category))
major_count

#2c Barplot of major_count
par(mai=c(1,4,1,1))
barplot (major_count$Freq, las=2, horiz=TRUE, main = " The Economic Guide To Picking A College Major", xlab = "Major Category Frequency", col=rgb(0.2,0.4,0.6,0.6), names.arg=(major_count$Var1), font=1)
title(ylab="Major", mgp=c(16,1,0), cex.lab=1.2)

#2d Write the fivethirtyeight data to a csv file
write.csv(df, file = "df538.csv", row.names=FALSE)

## HW_Questions 3: Codebook