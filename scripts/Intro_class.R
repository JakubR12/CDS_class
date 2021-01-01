

# loading tidyverse
pacman::p_load(tidyverse)

## downloading data into a raw_data folder
download.file("https://ndownloader.figshare.com/files/11492171", "raw_data/SAFI_clean.csv", mode = "wb")

# loading data
interviews <- read_csv("raw_data/SAFI_clean.csv")

rooms <- c(1, 2, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA)

# removing NA values
rooms<-rooms[!is.na(rooms)]

# counting items larger than 2,  8
rooms_large_2 <- rooms[rooms > 2]

# median 1.5
median(rooms)

summary(rooms)

