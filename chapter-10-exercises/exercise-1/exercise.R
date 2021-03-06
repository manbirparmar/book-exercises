# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
points <- c(27,38,23,21)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
opp_points <- c(24,31,26,7)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(points, opp_points)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$dif <- games$points - games$opp_points

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$dif > 0

# Create a vector of the opponent names corresponding to the games played
opp_names <- c("Cardinals", "Chiefs", "49ers", "Vikings")

# Assign your dataframe rownames of their opponents
rownames(games) <-opp_names

# View your data frame to see how it has changed!
View(games)
