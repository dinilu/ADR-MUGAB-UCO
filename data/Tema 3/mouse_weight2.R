before <- rnorm(50, mean = 250, sd = 5)
after <- runif(50, min = 270, max = 280)
id <- rep(1:50, 2)
data <- data.frame(id = id,
                   before = before,
                   after = after)
openxlsx::write.xlsx(data, "data/Tema 3/mouse_weight2.xlsx")
