require 'pry'

class RPS 
  attr_accessor :user_name, :user_wins, :computer_wins, :game_winner, :computer_selection

  def initialize(user_name)
    @user_name = user_name
    @user_wins = 0
    @computer_wins = 0
    @computer_selection = nil
    @game_winner = nil
  end

  def play_round(user_selection)
    @computer_selection = ["rock", "paper", "scissors"][rand(3)]
    round_winner = nil
    if user_selection == @computer_selection
      round_winner = nil
    elsif(user_selection == "rock" && @computer_selection == "scissors") || (user_selection == "paper" && @computer_selection == "rock") || (user_selection == "scissors" && @computer_selection == "paper")
      round_winner = @user_name
      @user_wins += 1
    else
      round_winner = "Computer"
      @computer_wins += 1
    end
    round_winner
  end

  def check_for_winner 
    if @user_wins == 1
      @game_winner = @user_name
    elsif @computer_wins == 1
      @game_winner = "Computer"
    end
  end
end

