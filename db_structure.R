# install.packages("DiagrammeR") if not already present

# load packages
library(dm)

# load data:
load(file = "data/people.rda")
load(file = "data/reports.rda")
load(file = "data/participation.rda")

# create bare-bones dm object
dm_no_keys <- dm(
  people, reports, participation
)

# add primary keys

dm_only_pks <-
  dm_no_keys %>%
  dm_add_pk(table = people, columns = person_id) %>%
  dm_add_pk(reports, columns = referral)

# add foreign keys

dm_all_keys <-
  dm_only_pks %>% 
  dm_add_fk(participation, person_id, people) %>% 
  dm_add_fk(participation, referral, reports)

# visualise relationship
visual <- dm_all_keys %>%
  dm_draw(
    view_type = "all"
  )

# save as jpeg in /images
htmlwidgets::saveWidget(visual, "data/zc-dm.html")
