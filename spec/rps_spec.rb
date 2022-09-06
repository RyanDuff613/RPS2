require 'rspec'
require 'pry'
require_relative '../lib/rps'

describe('#RPS') do
  describe('RPS.winner') do
    it("contains an attribute 'winner' that returns a string")do
      game = RPS.new("Ryan", "rock")
      game.play
      expect(game.winner).to(be_in(["Ryan", "Computer"]))
    end
  end 

  
end