
data <- read.csv("~/Desktop/ElectionsDB_Data/RunningMate.csv")

write("", file="~/Desktop/ElectionsDB_Data/populate_runningmate.txt", append = FALSE)
for(i in 2:length(data$Year)) {
  
  query <- "insert into db.RUNNING_MATE (cName, rName, StartYear, EndYear) values ("
  
  year <- data$Year[i]
  candidate <- data$Name[i]
  vice <- data$Name.1[i]
  
  candidate <- gsub("\\[", "", candidate)
  candidate <- gsub("\\]", "", candidate)
  candidate <- gsub("[0-9]+", "", candidate)
  candidate <- gsub("'", "", candidate)
  vice <- gsub("\\[", "", vice)
  vice <- gsub("\\]", "", vice)
  vice <- gsub("[0-9]+", "", vice)
  vice <- gsub("'", "", vice)
  
  query <- paste(query, "'", candidate, "', ", "'", vice, "', ", year, ", ", year + 4, ");", sep = '')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_runningmate.txt", append = TRUE)
  
}
