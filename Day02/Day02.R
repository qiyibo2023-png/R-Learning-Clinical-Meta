# ==== Day02 R Vector ====

# 1. Use c() to create vector
num_vec <- c(2, 4, 6, 8, 10) # Numeric Vector
char_vec <- c("Depression", "Anxiety", "Stress") # Character Vector

# 2. View the overall Vector
num_vec
char_vec

# 3. Indexing
num_vec[1] # Get the 1st element
num_vec[3] # Get the 3rd element

# 4. Slice
num_vec[c(1, 3, 5)]

# 5. Vector arithmetic
num_vec + 2
num_vec * 3
num_vec / 2

# 6. Use seq() to generate arithmetic sequence
seq(from=1, to=20, by=2)

# 7. Repeat elements
rep(5, times=4)
rep(c(1, 2), times=3)

# 8. Check vector length
length(num_vec)
length(char_vec)
