before <- rnorm(50, mean = 250, sd = 5)
after <- rnorm(50, mean = 275, sd = 3)
id <- rep(1:50, 2)
data <- data.frame(id = id,
                   before = before,
                   after = after)
openxlsx::write.xlsx(data, "data/Tema 3/mouse_weight.xlsx")
