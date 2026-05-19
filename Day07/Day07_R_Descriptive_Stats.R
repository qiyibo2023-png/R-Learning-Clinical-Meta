# ==== Day07 Descriptive & Frequency Statistics ====
# Construct clinical psychological simulation dataset
subject_id <- 1:12
group <- factor(c("Control","Control","Clinical","Clinical",
                  "Control","Clinical","Control","Clinical",
                  "Control","Clinical","Control","Clinical"))
gender <- factor(c("F","F","M","F","M","M","F","M","F","F","M","F"))
age <- c(21,23,25,22,24,26,22,27,23,24,25,21)
pss_stress <- c(12,15,28,30,14,29,13,27,16,31,15,26)

psy_survey <- data.frame(subject_id,group,gender,age,pss_stress)

# 1. Overall Global Descriptive Statistics
summary(psy_survey)

# 2. Detailed Descriptive Statistics
mean(psy_survey$age)
sd(psy_survey$age)
median(psy_survey$pss_stress)
quantile(psy_survey$pss_stress,c(0.25,0.75))

# 3. Frequency Statistics of Categorical Variables
table(psy_survey$group)
table(psy_survey$gender)

# 4. Cross-tabulation: Group × Gender
table(psy_survey$group,psy_survey$gender)

# 5. Frequency & Percentage Proportion
freq_tab <- table(psy_survey$group)
prop.table(freq_tab)

# 6. Calculate grouped means 
tapply(psy_survey$pss_stress, psy_survey$group, mean)
tapply(psy_survey$pss_stress, psy_survey$group, sd)

# 7. Double-group statistics
tapply(psy_survey$age, list(psy_survey$group,psy_survey$gender), mean)