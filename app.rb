require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  "
erb(:homepage)
end

get ("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
end

erb(:zebra)
end


get ("/paper") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end
  
  erb(:lion)
end
  

get ("/scissors") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end
  
  erb(:penguin)
end
    