library(readxl)

people <- read_excel("data/fakes.xlsx", sheet = "people")
reports <- read_excel("data/fakes.xlsx", sheet = "reports")
participation <- read_excel("data/fakes.xlsx", sheet = "participation")

save(people, file = "data/people.rda")
save(reports, file = "data/reports.rda")
save(participation, file = "data/participation.rda")
