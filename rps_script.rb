require './lib/rps.rb'
require 'pry'

puts "Welcome to the Rock, Paper, Scissors"
puts "Please enter your name"
user = gets.chomp
game = RPS.new(user)

until game.game_winner do
  puts "Score: #{game.user_name}: #{game.user_wins}, Computer: #{game.computer_wins}"
  puts "Please enter 'rock', 'paper' or 'scissors'"
  user_selection = gets.chomp
  round_winner = game.play_round(user_selection)
  if round_winner == user
    puts "#{user_selection} beats #{game.computer_selection}. #{user} wins this round"
  elsif round_winner == "Computer"
    puts "#{game.computer_selection} beats #{user_selection}. Computer wins this round"
  else  
    puts "It was a draw! You both chose #{user_selection}"
  end
  game.check_for_winner
end

puts "#{game.game_winner} Wins the game! Final Score: #{user}:#{game.user_wins}, Computer: #{game.computer_wins}"

# puts "Play again? Enter 'Y' for 'yes'"
# play_again = gets.chomp.downcase
# if play_again != 'y'
#   game = RPS.new(us)
# end

puts "Thanks for playing #{user}"