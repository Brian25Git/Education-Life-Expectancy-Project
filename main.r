library(tidyverse)
library(haven)
install.packages("readxl")
install.packages("vembedr")
install.packages("Hmisc")
install.packages("ggplot2")

library(readxl)
WDI_data <- read_excel("WDI140export.xlsx")
head(WDI_data)

ggplot(data = WDI_data, aes(x = SE.ADT.LITR.ZS, y = SP.DYN.LE00.IN)) + geom_point()

ggplot(data = WDI_data, aes(x = SE.SEC.CUAT.UP.ZS, y = SP.DYN.LE00.IN)) + geom_point()

ggplot(data = WDI_data, aes(x = SE.TER.CUAT.BA.ZS, y = SP.DYN.LE00.IN)) + geom_point()

edu_reg <- lm(SP.DYN.LE00.IN ~ SE.ADT.LITR.ZS + SE.SEC.CUAT.UP.ZS + SE.TER.CUAT.BA.ZS, data = WDI_data)
summary (edu_reg)

edu_reg <- lm(SP.DYN.LE00.IN ~ SE.ADT.LITR.ZS, data = WDI_data)
summary (edu_reg)

edu_reg <- lm(SP.DYN.LE00.IN ~ SE.SEC.CUAT.UP.ZS, data = WDI_data)
summary (edu_reg)

edu_reg <- lm(SP.DYN.LE00.IN ~ SE.TER.CUAT.BA.ZS, data = WDI_data)
summary (edu_reg)
