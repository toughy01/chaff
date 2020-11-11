#############################################################################
# WEEK 6 WORKSHOP- TOPIC 3- "REPRODUCIBILITY AND AN INTRO TO RMARKDOWN"     #
#############################################################################

################################TASK 1#######################################

library(tidyverse)


chaff <- read.table("raw_data/chaff.txt", header = T)

#NEED TO GENERATE A TIDYDATA FORMAT WHEREBY THERE IS A VARIABLE IN EACH
#COLUMN (EXPLANATORY VARIABLE = CHAFFINCH SEX, RESPONSE VARIABLE = MASS)

glimpse(chaff)

#USE 'GATHER' FUNCTION TO ASSIGN EACH LEVEL OF THE CATEGORICAL VARIABLE
# KEY = SEX TO ITS CORRESPONDING NUMERICAL VALUE OF WHICH THIS COLUMN
#HAS BEEN GIVEN THE NAME 'MASS'
chaff2 <- gather(chaff, key = sex, value = mass)

