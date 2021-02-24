library(readxl)

people<- read_excel("data/fakes.xlsx", sheet = "people", 
                    col_types = c("numeric", "text", "text", 
                                  "numeric", "text", "date"))
reports <- read_excel("data/fakes.xlsx", sheet = "reports", 
                      col_types = c("numeric", "text", "date"))
participation <- read_excel("data/fakes.xlsx", sheet = "participation")

save(people, file = "data/people.rda")
save(reports, file = "data/reports.rda")
save(participation, file = "data/participation.rda")
