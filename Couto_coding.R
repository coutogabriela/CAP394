# First we work with Mortality Data form the Ministry of Health

# We indicate the directory where the script and files are.
setwd("/Users/gabrielacouto/Documents/2018/disciplina_CAP394 copy/CAP394_DataScience/SIM_data/2013_2016/")
getwd()

# Warn to R that we using UTF
Sys.setlocale(category = "LC_ALL", locale = "pt_PT.UTF-8")

#import 4 spreadsheets containing different data referred to municipalities: 
#number of deaths by year (MORT), by age (AGE), by sex (SEX), degree of schooling (ESCO) and civil status (CIVIL)

MORT <- read.csv("SIM_YEAR_2013_2016.csv", fileEncoding = "ISO8859-1", skip = 4, sep = ";", as.is = TRUE)
ESCO <- read.csv("SIM_ESCO_2013_2016.csv", fileEncoding = "ISO8859-1", skip = 4, sep = ";", as.is = TRUE)
SEX <- read.csv("SIM_SEX_2013_2016.csv", fileEncoding = "ISO8859-1", skip = 4, sep = ";", as.is = TRUE)
AGE <- read.csv("SIM_AGE_2013_2016.csv", fileEncoding = "ISO8859-1", skip = 4, sep = ";", as.is = TRUE)
CIVIL <- read.csv("SIM_CIVIL_2013_2016.csv", fileEncoding = "ISO8859-1", skip = 4, sep = ";", as.is = TRUE)

#checking if data import is corretc
head(MORT)
head(ESCO)
head(SEX)
head(AGE)
head(CIVIL)

#concatenate spreadsheets in a single dataframne
dados <- cbind(MORT, ESCO, SEX, AGE, CIVIL)
head(dados)

#checking and deleting final lines and comments for "dados"
tail(dados)
dados.clean <- dados[-c(426:432),]
tail(dados.clean)

# deleting repeated "Município" and "Total" colunms from d
head(dados.clean)
which(colnames(dados.clean) == "Município")
which(colnames(dados.clean) == "Total")
dados.clean2 <- dados.clean[,-c(6,7,14,15,18,19,33,34,41)]
head(dados.clean2)

#spliting firts column "Município" in two
install.packages("dplyr")
install.packages("stringr")

#separate numeric values using str_extract function
cod.mun <- str_extract(dados.clean2$Município, "[0-9]+")
head(dados.clean2)

#Create municipatities column
dados.clean2$Mun.Names <- 1

#Separates the municipalities codes from its names
for(i in 1:nrow(dados.clean2)) {
  dados.clean2$Mun.Names[i] <- strsplit(dados.clean2$Município[i], as.numeric(cod.mun[i]), fixed = T)[[1]][2]
}
dados.clean2$Mun.Names

#Adds "Total" to the last column (which didn't work using loop function)
dados.clean2$Mun.Names[425] <- c("Total")

#Assemble the municipalities code backto dataframe
dados.clean2$Mun.Cod <- cod.mun
dados.clean2$Mun.Cod

#Cleans first column refered to municipalities' codes and names all together
#Brings columns Mun.names and Mun.Cod to front
dados.clean3 <- dados.clean2[,-1]
dados.clean3 <- cbind(dados.clean3[,c(32, 33)], dados.clean3[,-c(32, 33)])
dados.clean3

#Replaces blanck spaces by points in municipalities' name
dados.clean3$Mun.Names <- gsub(" ", ".", dados.clean3$Mun.Names) 
dados.clean3$Mun.Names

#Replaces hyphens by zeros 
for(i in 1:c(ncol(dados.clean3)-2)) {
  dados.clean3[,i] <- gsub("-", 0, dados.clean3[,i])
}
dados.clean3


#creating new dataframe for "Total" for MORT, ESCO, SEX, AGE and CIVIL
#checkin if "Total" for MORT, ESCO, SEX, AGE and CIVIL are the same
#checking and deleting final lines and comments for "TOTAL" 
subset.TOTAL = data.frame(
  mort = MORT[,"Total"],
  esco = ESCO[,"Total"],
  sex = SEX[,"Total"],
  age = AGE[,"Total"],
  civil = CIVIL[,"Total"]
)
head(subset.TOTAL) 

equal <- subset.TOTAL[,"mort"] == subset.TOTAL[,"esco"] & subset.TOTAL[,"mort"] == subset.TOTAL[,"sex"] & subset.TOTAL[,"mort"] == subset.TOTAL[,"age"] & subset.TOTAL[,"mort"] == subset.TOTAL[,"civil"]
which(!equal)
which(colnames(subset.TOTAL) == "0")

tail(subset.TOTAL)
subset.TOTAL.clean <- subset.TOTAL[-c(426:432),]
tail(subset.TOTAL.clean)



