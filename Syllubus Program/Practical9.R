players <- data.frame(
  Name = c("Dhoni","Virat","Rohit","Hardik","Raina"),
  Team = c("CSK","RCB","MI","MI","CSK"),
  Matches_Played = c(250,280,270,150,205),
  Runs = c(5200,8500,7000,3200,5528)
)

print(players)

# a. Store the details in the .csv file

write.csv(players,
          "D:R Programs/Syllubus Program/players.csv",
          row.names = FALSE)

print("Data Stored Successfully")

players <- read.csv("D:/R Programs/Syllubus Program/players.csv")
print(players)

# b. Display the details of a single player by entering the name

player_name <- readline("Enter Player Name: ")

player_details <- subset(players,Name == player_name)
print(player_details)

# c. Display the full details of a player who has secured maximum score.

max_player <- players[which.max(players$Runs),]
print("Player with Maximum Runs: ")
print(max_player)

# d.Display the average score of each team

# Syntax aggregate(column ~ group, data = dataframe, function)
avg_team <- aggregate(Runs ~ Team,
                      data = players,
                      mean)

print("Average Runs of Each Teams")
print(avg_team)

# e. Update Score of a particular team and store the details in .csv through R

player_name <- readline("Enter Player Name to Updated: ")
new_score <- as.numeric(readline("Enter New Score: "))
if(player_name%in%players$Name){
  players$Runs[players$Name==player_name]<-new_score
  print("Updated Player Details: ")
  print(players)
}