# Random variation in age
# Beta distribution

# 
# https://www.anarchive-beta.com/entry/2022/07/02/212513 (in jpn)
# https://pubmed.ncbi.nlm.nih.gov/27578690/

library(tidyverse)
library(gganimate)

alpha <- 5
beta  <- 8
N <- 1000

phi_n <- rbeta(n = N, shape1 = alpha, shape2 = beta) + 65
head(phi_n)

data_df_test <- tidyr::tibble(phi = phi_n)
summary(data_df$phi)

# Histogram
ggplot(data = data_df, mapping = aes(x = phi)) + # データ
  geom_histogram(fill = "#00A968", bins = 30) + # 度数
  labs(title = "Beta Distribution", 
       subtitle = paste0("alpha=", alpha, ", beta=", beta, ", N=", N), # (文字列表記用)
       #subtitle = parse(text = paste0("list(alpha==", alpha, ", beta==", beta, ", N==", N, ")")), # (数式表記用)
       x = expression(phi), y = "frequency") # ラベル
