library(plyr)
#Loading the Dataset
datAll = read.table("E:/MS DS/Stats Methods & Tech DS/assignment 2/trainData.txt", quote="\"", comment.char="")
#View(datAll)

#Total Number of Rows in the Dataset
totalRows = nrow(datAll)

#storing last column of dataset in labels variable
labels = datAll[,ncol(datAll)]

#counting total 0's
a <- table(labels)

totalNo = a[names(a)==0]

totalYes = a[names(a)==1]


prob_of_label_zero =  totalNo/totalRows
prob_of_label_zero

prob_of_label_one = totalYes/totalRows
prob_of_label_one

#storing the first column of dataset in f1

f1 = datAll[,1]  

b <- table(f1)

total_No_f1 = b[names(b)==0]
total_No_f1
total_yes_f1 = b[names(b)==1]



oneClass = labels==1
oneClass
zeroClass = labels==0

trainX = datAll[,-ncol(datAll)]

oneDat = totalRows[oneClass,]

#oneDat

zeroDat = totalRows[zeroClass,]
zeroDat

#as.data.frame(table(labels))