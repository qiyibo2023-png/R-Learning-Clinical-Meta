# ==== Day03 Factor & Logical Subset ====

# 1. Character vector
group <- c("Control", "Clinical", "Control", "Clinical", "Clinical")

# 2. Convert to Factor
group_factor <- factor(group)

# 3. Check Factor Level
group_factor
levels(group_factor)

# 4. Filter Numeric Vectors
score <- c(25, 33, 41, 28, 35)

# 5. Logical Subset
score > 30
score[score > 30] # Filter scores greater than 30

# 6. Filter scores greater than 30
score[score >= 28 & score <= 38]
 
# 7. Group Filtering by Factors
score[group_factor == "Clinical"]
score[group_factor == "Control"]

# 8. Basic Statistical Functions
mean(score)
sd(score)
min(score)
max(score)
