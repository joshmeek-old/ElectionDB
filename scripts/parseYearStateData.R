
# Download 2016 data

data_files <- list()
early_years <- read.csv("~/Desktop/ElectionsDB_Data/Year_State/Year_1789-1820.csv")

k <- 1
years <- c()
for(i in seq(1824, 2012, 4)) {
  data_files[[k]] <- read.csv(paste("~/Desktop/ElectionsDB_Data/Year_State/Year_", i, ".csv", sep=''), header=FALSE, stringsAsFactors=FALSE, fileEncoding="latin1")
  k <- k + 1
  years <- c(years, i)
}

#############################################################
write("", file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = FALSE)
#insert into db.CANDIDATE (Name, Year, Party, Popular, Percentage, Electoral) values (Name, Year, Party, Popular, Percentage, Electoral);
# Candidate 1
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Party, Popular, Percentage, Electoral) values ("
  name <- data_files[[i]][1, ][1]
  party <- data_files[[i]][2, ][1]
  popular <- data_files[[i]][length(data_files[[i]][, 1]), ][3]
  percentage <- data_files[[i]][length(data_files[[i]][, 1]), ][4]
  electoral <- data_files[[i]][length(data_files[[i]][, 1]), ][5]  
  if(electoral == "") {
    electoral <- "0"
  }
  popular <- gsub(",", "", popular)
  
  query <- paste(query, "'", name, "', ", years[i], ", '", party, "', ", popular, ", ", percentage, ", ", electoral, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

# Candidate 2
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Party, Popular, Percentage, Electoral) values ("
  name <- data_files[[i]][1, ][2]
  party <- data_files[[i]][2, ][2]
  popular <- data_files[[i]][length(data_files[[i]][, 1]), ][6]
  percentage <- data_files[[i]][length(data_files[[i]][, 1]), ][7]
  electoral <- data_files[[i]][length(data_files[[i]][, 1]), ][8]
  if(electoral == "") {
    electoral <- "0"
  }
  popular <- gsub(",", "", popular)
  
  query <- paste(query, "'", name, "', ", years[i], ", '", party, "', ", popular, ", ", percentage, ", ", electoral, ");", sep='')

  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

# Candidate 3
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Party, Popular, Percentage, Electoral) values ("
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
  
  query <- paste(query, "'", name, "', ", years[i], ", '", party, "', ", popular, ", ", percentage, ", ", electoral, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

# Candidate 4
for(i in 1:length(data_files)) {
  query <- "insert into db.CANDIDATE (Name, Year, Party, Popular, Percentage, Electoral) values ("
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
  
  query <- paste(query, "'", name, "', ", years[i], ", '", party, "', ", popular, ", ", percentage, ", ", electoral, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

# Early Years
for(i in 1:length(early_years$Year)) {
  query <- "insert into db.CANDIDATE (Name, Year, Party, Popular, Percentage, Electoral) values ("
  name <- early_years[,2][i]

  party <- early_years[,3][i]
  electoral <- early_years[,4][i]
  if(electoral == "") {
    electoral <- "0"
  }
  
  query <- paste(query, "'", name, "', ", early_years[,1][i], ", '", party, "', 0", ", ", "0", ", ", electoral, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_candidate.txt", append = TRUE)
}

#############################################################
write("", file="~/Desktop/ElectionsDB_Data/populate_president.txt", append = FALSE)
#insert into db.PRESIDENT (Name, StartYear, EndYear) values (Name, StartYear, EndYear)

# Early Years
for(i in 1:length(early_years$Year)) {
  
  if(i != 1 && early_years[,1][i] == early_years[,1][i - 1]) {
    next
  }
  
  query <- "insert into db.PRESIDENT (Name, StartYear, EndYear) values ("
  name <- early_years[,2][i]
  
  party <- early_years[,3][i]
  electoral <- early_years[,4][i]
  if(electoral == "") {
    electoral <- "0"
  }
  
  query <- paste(query, "'", name, "', ", early_years[,1][i], ", ", early_years[,1][i] + 4, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_president.txt", append = TRUE)
}

# Candidate 1
for(i in 1:length(data_files)) {
  query <- "insert into db.PRESIDENT (Name, StartYear, EndYear) values ("
  name <- data_files[[i]][1, ][1]
  
  query <- paste(query, "'", name, "', ", years[i], ", ", years[i] + 4, ");", sep='')
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_president.txt", append = TRUE)
}

data_files[[48]]

#############################################################
write("", file="~/Desktop/ElectionsDB_Data/populate_state.txt", append = FALSE)
#insert into db.STATE (sName, cName, Year, Popular, Percentage, Electoral) values (Name, Year, Popular, Percentage, Electoral);
# Candidate 1
for(i in 1:length(data_files)) {
  
  sName <- data_files[[i]][1, ][1]
  if(sName == "") {
    next
  }
  
  for(k in 5:(length(data_files[[i]][, 1]) - 2)){
    query <- "insert into db.STATE (sName, cName, Year, Popular, Percentage, Electoral) values ("
    
    name <- data_files[[i]][k,][1]
    if(name == "") {
      next
    }
    popular <- data_files[[i]][k,][3]
    percentage <- data_files[[i]][k,][4]
    electoral <- data_files[[i]][k,][5]  
    electoral <- gsub("\\*", "", electoral)
    name <- gsub("\\*", "", name)
    if(electoral == "") {
      electoral <- "0"
    }
    if(popular == "") {
      popular <- "0"
    }
    if(percentage == "") {
      percentage <- "0"
    }
    popular <- gsub(",", "", popular)
    popular <- gsub("-", "0", popular)
    percentage <- gsub("%", "", percentage)
    
    query <- paste(query, "'", name, "', ", "'", sName, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')
    
    write(query, file="~/Desktop/ElectionsDB_Data/populate_state.txt", append = TRUE) 
  }
}

# Candidate 2
for(i in 1:length(data_files)) {
  
  sName <- data_files[[i]][1, ][2]
  if(sName == "") {
    next
  }
  
  for(k in 5:(length(data_files[[i]][, 1]) - 2)){
    query <- "insert into db.STATE (sName, cName, Year, Popular, Percentage, Electoral) values ("
    
    name <- data_files[[i]][k,][1]
    if(name == "") {
      next
    }
    popular <- data_files[[i]][k,][6]
    percentage <- data_files[[i]][k,][7]
    electoral <- data_files[[i]][k,][8]  
    electoral <- gsub("\\*", "", electoral)
    name <- gsub("\\*", "", name)
    if(electoral == "") {
      electoral <- "0"
    }
    if(popular == "") {
      popular <- "0"
    }
    if(percentage == "") {
      percentage <- "0"
    }
    popular <- gsub(",", "", popular)
    popular <- gsub("-", "0", popular)
    percentage <- gsub("%", "", percentage)
    
    query <- paste(query, "'", name, "', ", "'", sName, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')
    
    write(query, file="~/Desktop/ElectionsDB_Data/populate_state.txt", append = TRUE) 
  }
}

# Candidate 3
for(i in 1:length(data_files)) {
  
  sName <- data_files[[i]][1, ][3]
  if(sName == "") {
    next
  }
  
  for(k in 5:(length(data_files[[i]][, 1]) - 2)){
    query <- "insert into db.STATE (sName, cName, Year, Popular, Percentage, Electoral) values ("
    
    name <- data_files[[i]][k,][1]
    if(name == "") {
      next
    }
    popular <- data_files[[i]][k,][9]
    percentage <- data_files[[i]][k,][10]
    electoral <- data_files[[i]][k,][11] 
    electoral <- gsub("\\*", "", electoral)
    name <- gsub("\\*", "", name)
    if(electoral == "") {
      electoral <- "0"
    }
    if(popular == "") {
      popular <- "0"
    }
    if(percentage == "") {
      percentage <- "0"
    }
    popular <- gsub(",", "", popular)
    popular <- gsub("-", "0", popular)
    percentage <- gsub("%", "", percentage)
    
    query <- paste(query, "'", name, "', ", "'", sName, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')
    
    write(query, file="~/Desktop/ElectionsDB_Data/populate_state.txt", append = TRUE) 
  }
}

# Candidate 4
for(i in 1:length(data_files)) {
  
  sName <- data_files[[i]][1, ][4]
  if(sName == "") {
    next
  }
  
  for(k in 5:(length(data_files[[i]][, 1]) - 2)){
    query <- "insert into db.STATE (sName, cName, Year, Popular, Percentage, Electoral) values ("
    
    name <- data_files[[i]][k,][1]
    if(name == "") {
      next
    }
    popular <- data_files[[i]][k,][12]
    percentage <- data_files[[i]][k,][13]
    electoral <- data_files[[i]][k,][14]  
    electoral <- gsub("\\*", "", electoral)
    name <- gsub("\\*", "", name)
    if(electoral == "") {
      electoral <- "0"
    }
    if(popular == "") {
      popular <- "0"
    }
    if(percentage == "") {
      percentage <- "0"
    }
    popular <- gsub(",", "", popular)
    popular <- gsub("-", "0", popular)
    percentage <- gsub("%", "", percentage)
    
    query <- paste(query, "'", name, "', ", "'", sName, "', ", years[i], ", ", popular, ", ", percentage, ", ", electoral, ");", sep='')
    
    write(query, file="~/Desktop/ElectionsDB_Data/populate_state.txt", append = TRUE) 
  }
}






