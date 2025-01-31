# Load rvest
library(rvest)

# Wikipedia page URL
url <- "https://en.wikipedia.org/wiki/Comma-separated_values"

# Read the page content
page <- read_html(url)

# Find and extract the cars table
cars_table <- page %>% 
  html_node(xpath = '//*[@id="mw-content-text"]/div[1]/table[2]') %>% 
  html_table()

# Save as CSV
write.csv(cars_table, "r_csv/cars.csv", row.names = FALSE)

# Read CSV to verify
cars_data <- read.csv("r_csv/cars.csv")
print(cars_data)