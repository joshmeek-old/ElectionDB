
data <- read.csv("~/Desktop/ElectionsDB_Data/VicePresidents.csv", fileEncoding="latin1")

data$PRESIDENT <- gsub(".*Ê", "", data$PRESIDENT)
data$VICE.PRESIDENT <- as.character(data$VICE.PRESIDENT)

write("", file="~/Desktop/ElectionsDB_Data/populate_vp.txt", append = FALSE)
for(i in 1:length(data$PRESIDENT)) {
  
  query <- "insert into db.VICE_PRESIDENT (pName, vName, StartYear, EndYear) values ("
  
  date1 <- unique(na.omit(as.numeric(unlist(strsplit(unlist(data$PRESIDENT[i]), "[^0-9]+")))))[1]
  date2 <- unique(na.omit(as.numeric(unlist(strsplit(unlist(data$PRESIDENT[i]), "[^0-9]+")))))[2]
  vdate1 <- unique(na.omit(as.numeric(unlist(strsplit(unlist(data$VICE.PRESIDENT[i]), "[^0-9]+")))))[1]
  vdate2 <- unique(na.omit(as.numeric(unlist(strsplit(unlist(data$VICE.PRESIDENT[i]), "[^0-9]+")))))[2]
  pn1 <- strsplit(data$PRESIDENT[i], split=" ")[[1]][1]
  pn2 <- strsplit(data$PRESIDENT[i], split=" ")[[1]][2]
  vpn1 <- strsplit(data$VICE.PRESIDENT[i], split=" ")[[1]][1]
  vpn2 <- strsplit(data$VICE.PRESIDENT[i], split=" ")[[1]][2]
  
  pn3 <- ""
  vpn3 <- ""
  
  if(grepl("\\.", pn2)) {
    pn3 <- strsplit(data$PRESIDENT[i], split=" ")[[1]][3]
  }
  if(grepl("\\.", vpn2)) {
    vpn3 <- strsplit(data$VICE.PRESIDENT[i], split=" ")[[1]][3]
  }
  
  if(is.na(vdate2)) {
    vdate2 <- '0'
  }
  
  if(pn3 != "" & vpn3 != "") {
      query <- paste(query, "'", pn1, " ", pn2, " ", pn3, "', '", vpn1, " ", vpn2, " ", vpn3, "', ", vdate1, ", ", vdate2, ");", sep = '') 
  }
  else if(pn3 != "") {
    if(vpn1 == "None") {
      query <- paste(query, "'", pn1, " ", pn2, " ", pn3, "', '", vpn1, "', ", vdate1, ", ", vdate2, ");", sep = '')
    }
    else {
      query <- paste(query, "'", pn1, " ", pn2, " ", pn3, "', '", vpn1, " ", vpn2, "', ", vdate1, ", ", vdate2, ");", sep = '') 
    }
  }
  else if(vpn3 != "") {
      query <- paste(query, "'", pn1, " ", pn2, "', '", vpn1, " ", vpn2, " ", vpn3,  "', ", vdate1, ", ", vdate2, ");", sep = '') 
  }
  else {
    if(vpn1 == "None") {
      query <- paste(query, "'", pn1, " ", pn2, "', '", vpn1, "', ", vdate1, ", ", vdate2, ");", sep = '')
    }
    else {
      query <- paste(query, "'", pn1, " ", pn2, "', '", vpn1, " ", vpn2, "', ", vdate1, ", ", vdate2, ");", sep = '') 
    }  
  }
  
  write(query, file="~/Desktop/ElectionsDB_Data/populate_vp.txt", append = TRUE)
}

#grepl("\\.", strsplit(data$VICE.PRESIDENT[9], split=" ")[[1]])
