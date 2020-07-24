setwd("F:/data_science/courseara R prograamming/specdata")
pullutantmean <- function(dirctory, pollutant,  ID = 1:332){
  filelist <- list.files(path = "F:/data_science/courseara R prograamming/specdata", pattern = ".csv", full.names = TRUE)
values <- numeric()

for (i in ID) {
  data <- read.csv(filelist[i])
  values <- c(values, data[[pollutant]])
}
  mean(values, na.rm = TRUE)
}
pullutantmean("F:/data_science/courseara R prograamming/specdata", "sulfate", 1:21)
