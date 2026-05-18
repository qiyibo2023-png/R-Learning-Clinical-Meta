# ==== Day06 Data Cleaning & Sorting ====
# Construct simulated psychological data with missing values
sub_id <- 1:7
sex <- c("M","F","M","F","NA","M","F")
edu <- c(16,18,15,17,19,NA,16)
sleep_score <- c(45,52,38,60,49,55,NA)

# Combine data frames
cli_data <- data.frame(sub_id,sex,edu,sleep_score)

# 1. Check NA values
is.na(cli_data) # Missing positions judged by logic
sum(is.na(cli_data)) # Count the total number of missing values
colSums(is.na(cli_data)) # Count missing values by column

# 2. Delete rows with NA
clean_data_omit <- na.omit(cli_data)

# 3. Fill NA with mean value
cli_data$sleep_score[is.na(cli_data$sleep_score)] <- mean(cli_data$sleep_score, na.rm = TRUE)

# 4. Sort data
# Sort by sleep score in ascending order
data_asc <- cli_data[order(cli_data$sleep_score), ]
# Sort by sleep score in descending order
data_desc <- cli_data[order(-cli_data$sleep_score), ]

# 5. Rename columns
colnames(cli_data) <- c("ID","Gender","Education","Sleep_score")

# 6. Simple elimination of outliers
valid_data <- cli_data[cli_data$Sleep_Score >= 30 & cli_data$Sleep_Score <= 70, ]