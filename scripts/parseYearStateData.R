
# Download 2016 data

data_files <- list()

k <- 1
years <- c()
for(i in seq(1824, 2012, 4)) {
  data_files[[k]] <- read.csv(paste("~/Desktop/ElectionsDB_Data/Year_State/Year_", i, ".csv", sep=''), header=FALSE, stringsAsFactors=FALSE, fileEncoding="latin1")
  k <- k + 1
  years <- c(years, i)
}

# for(i in 47:length(data_files)) {
#   name <- data_files[[i]][1, ][1]
#   party <- data_files[[i]][2, ][1]
#   #Go until: length(data_files[[i]][, 1]) - 2
#   for(k in 5:(length(data_files[[i]][, 1]) - 2)) {
#     # State | Pop Vote | Percentage | Electoral Votes
#     query <- "insert into db.CANDIDATE (Name, Year, Popular, Percentage, Electoral) values ("
#     
#     state <- data_files[[i]][k, ][1]
#     popular <- data_files[[i]][k, ][3]
#     percentage <- data_files[[i]][k, ][4]
#     electoral <- data_files[[i]][k, ][5]
#     
#     query <- paste(query, name, ", ", year, ", ", popular, ", ", )
#     
#     #print(paste(data_files[[i]][k, ][1], data_files[[i]][k, ][3], data_files[[i]][k, ][4], data_files[[i]][k, ][5], sep = ''))
#   }
# }

write("", file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = FALSE)

# Candidate 1
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Popular, Percentage, Electoral) values ("
  name <- data_files[[i]][1, ][1]
  party <- data_files[[i]][2, ][1]
  popular <- data_files[[i]][length(data_files[[i]][, 1]), ][3]
  percentage <- data_files[[i]][length(data_files[[i]][, 1]), ][4]
  electoral <- data_files[[i]][length(data_files[[i]][, 1]), ][5]  
  if(electoral == "") {
    electoral <- "0"
  }
  popular <- gsub(",", "", popular)
  
  query <- paste(query, "'", name, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

# Candidate 2
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Popular, Percentage, Electoral) values ("
  name <- data_files[[i]][1, ][2]
  party <- data_files[[i]][2, ][2]
  popular <- data_files[[i]][length(data_files[[i]][, 1]), ][6]
  percentage <- data_files[[i]][length(data_files[[i]][, 1]), ][7]
  electoral <- data_files[[i]][length(data_files[[i]][, 1]), ][8]
  if(electoral == "") {
    electoral <- "0"
  }
  popular <- gsub(",", "", popular)
  
  query <- paste(query, "'", name, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')

  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

# Candidate 3
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Popular, Percentage, Electoral) values ("
  name <- data_files[[i]][1, ][3]
  if(name == "") {
    next
  }
  party <- data_files[[i]][2, ][3]
  popular <- data_files[[i]][length(data_files[[i]][, 1]), ][9]
  percentage <- data_files[[i]][length(data_files[[i]][, 1]),][10]
  electoral <- data_files[[i]][length(data_files[[i]][, 1]), ][11]
  if(electoral == "") {
    electoral <- "0"
  }
  popular <- gsub(",", "", popular)
  
  query <- paste(query, "'", name, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

Candidate 4
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Popular, Percentage, Electoral) values ("
  name <- data_files[[i]][1, ][4]
  if(name == "") {
    next
  }
  party <- data_files[[i]][2, ][4]
  popular <- data_files[[i]][length(data_files[[i]][, 1]), ][12]
  percentage <- data_files[[i]][length(data_files[[i]][, 1]), ][13]
  electoral <- data_files[[i]][length(data_files[[i]][, 1]), ][14]
  if(electoral == "") {
    electoral <- "0"
  }
  popular <- gsub(",", "", popular)
  
  query <- paste(query, "'", name, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

#insert into db.CANDIDATE (Name, Year, Popular, Percentage, Electoral) values (Name, Year, Popular, Percentage, Electoral);










