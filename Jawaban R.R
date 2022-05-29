# no 1 a
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
standar <- sd(y-x)
#1b
selisih <- y-x
t <- (sum(selisih)/9)/(standar/sqrt(9))
#1c
var.test(x,y)
t.test(x, y, mu=0, alternative = "two.sided", var.equal = TRUE)

# no 2
install.packages("BSDA")
library(BSDA)

zsum.test(mean.x=23500, sigma.x=3900, n.x=100, alternative = "less", mu=20000, conf.level=0.95)

#3b
tsum.test(mean.x=3.64, s.x=1.67, n.x=19, mean.y=2.79, s.y=1.32, n.y=27, alternative="two.side", var.equal=TRUE, conf.level=0.95)

#3c
ujistatis <- qt(c(0.05/2, 1-(0.05/2)), df=2)

#3d
qchisq(p=0.05, df=2, lower.tail=FALSE)

#4
data <- read.table(url(https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt))
dim(data)
attach(data)
head(data)
data$v1 <- as.factor(data$v1)
data$v1 = factor(data$v1, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
class (data)
group_1 <- subset(data, v1=="Kucing Oren")
group_2 <- subset(data, v1=="Kucing Hitam")
group_3 <- subset(data, v1=="Kucing Putih")

#4b
bartlett.test(Lenght-V1, data=data)

#4c
model_1 <- lm(data$Length~data$group)

#5a
GTL <- read_csv("GTL.csv")
head(GTL)
str(GTL)
qplot(x=temp, y=light, geom="point", data=GTL) + facet_grid(.~Glass, labeller=label_both)