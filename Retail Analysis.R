library(tidyverse)
library(dplyr)
library(tree)



sales <- read.csv("trainingset.csv")

sales <- as.data.frame(sales)
sales <- as.data.frame(sales)

set.seed(12345)

training <- sample(1:nrow(sales), 0.6*nrow(sales))

ycol <- match('OutletSales',colnames(sales))


sales.training <- sales[training,-ycol]
sales.training.results <- sales[training,ycol]

sales.test <- sales[-training,-ycol]
sales.test.results <-sales [-training, ycol]

sales.tree <- tree(OutletSales~., data = sales[training,])
plot(sales.tree)
text(sales.tree)

summary(sales.tree)
sales.tree.predictions <- predict(sales.tree, sales[-training,])

(mean((sales.test.results-sales.tree.predictions)^2))^0.5

sales.new <- read.csv("testingset.csv")
sales.new$Weight <- as.numeric(sales.new$Weight)

predict(sales.tree, sales.new)

best.mindev <- -1
RMSE <- -1
best.RMSE <- 99999999
for (i in seq(from=0.0005, to=0.05, b=0.005)) {
  sales.tree <- tree(OutletSales ~ ., data=sales[training,], mindev=i)
  sales.tree.predictions <- predict(sales.tree,sales)[-training]
  RMSE <- (mean((sales.test.results-sales.tree.predictions)^2))^0.5
  if (RMSE < best.RMSE) {
    best.mindev <- i
    best.RMSE <- RMSE
  }
}
print(paste("The optimal value of mindev is",best.mindev,"with a RMSE of",best.RMSE))

sales.best.tree <- tree(OutletSales ~ ., data=sales[training,], mindev=best.mindev)
plot(sales.best.tree)
text(sales.best.tree, cex=0.5)

##############################
### K-Means###




