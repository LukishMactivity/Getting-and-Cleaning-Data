library("tidyverse")

### GET DATA

# Download data
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, "data.zip")

# Unzip data
unzip(zipfile = "data.zip", exdir = getwd())

### CREATE CONSOLIDATED DATA FRAME

# Create list of column names from features.txt. NOTE: column names aren't
# entirely unique!

cnames <- read.table('./UCI HAR Dataset/features.txt', header = FALSE) %>% 
  unite(cnames,1:2, sep = "_", remove = TRUE)

cnames <- as.list(cnames$cnames) %>% unlist()

# Read X_test.txt and apply column names
X_test <- 
  read_table2(
    "./UCI HAR Dataset/test/X_test.txt",
    col_names = cnames,
    col_types = NULL,
    locale = default_locale(),
    na = "NA",
    skip = 0,
    n_max = Inf,
    guess_max = 1000,
    progress = show_progress(),
    comment = "",
    skip_empty_rows = FALSE
  )

# Add activity variable as column to X-test data frame

variables <- read_table2("./UCI HAR Dataset/test/y_test.txt", 
                         col_names = "Activity",
                         col_types = "c",
                         skip_empty_rows = FALSE
                        )

X_test$Activity = variables$Activity

# Add subjects as column to X-test data frame

Subjects <- read_table2("./UCI HAR Dataset/test/subject_test.txt", 
                         col_names = "Subject",
                         col_types = "n",
                         skip_empty_rows = FALSE
)

X_test$Subject = Subjects$Subject

### Read Train Data and bind three files

X_train <- 
  read_table2(
    "./UCI HAR Dataset/train/X_train.txt",
    col_names = cnames,
    col_types = NULL,
    locale = default_locale(),
    na = "NA",
    skip = 0,
    n_max = Inf,
    guess_max = 1000,
    progress = show_progress(),
    comment = "",
    skip_empty_rows = FALSE
  )

# Add activity variable as column to X-train data frame

variables <- read_table2("./UCI HAR Dataset/train/y_train.txt", 
                         col_names = "Activity",
                         col_types = "c",
                         skip_empty_rows = FALSE
)

X_train$Activity = variables$Activity

# Add subjects as column to X-train data frame

Subjects <- read_table2("./UCI HAR Dataset/train/subject_train.txt", 
                        col_names = "Subject",
                        col_types = "n",
                        skip_empty_rows = FALSE
)

X_train$Subject = Subjects$Subject

# Merge both X_test and X_train an order by Subject, Activity, ...

data <- rbind(X_test, X_train) %>% 
        select(Subject, Activity, 1:561) %>%
        arrange(Subject, Activity)


### Select all measure containing 'mean()' 'std()'

data <- select(data, contains(c("Subject", "Activity", "mean()", "std()")))

### CHANGE ACTIVITY LABELS

data$Activity <-
data$Activity %>% str_replace_all(c("1" = "Walking", 
                                    "2" = "Walking Upstairs",
                                    "3" = "Walking Downstairs",
                                    "4" = "Sitting",
                                    "5" = "Standing",
                                    "6" = "Laying")
)

### Produce Tidy data frame showing means of measure by Activity

tidy <- data %>% 
  group_by(Subject, Activity) %>% 
  summarise_all(funs(mean))

write.table(tidy, file = "tidy.txt", row.names = FALSE)