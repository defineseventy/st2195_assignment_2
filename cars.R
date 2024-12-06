install.packages("rvest")
library(rvest)
car_wiki <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values")
car_tables <- car_wiki %>%
  html_nodes(xpath = '//*[@id="mw-content-text"]/div[1]/pre[1]') %>%
  html_text()
car_tables
car_table <- car_tables[1]
write.table(car_table,"C:/Users/
            Jacqueline Lim/Working Directory for Python/
            repositories/st2195_assignment_2/r_csv/cars.csv", 
            quote =FALSE, 
            col.names=FALSE, 
            row.names = FALSE)
cars_data <- read.csv("cars.csv")
print(cars_data)

