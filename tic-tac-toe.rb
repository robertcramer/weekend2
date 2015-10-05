require 'pry'

require './human'
require './game'
require './computer'
require './board'




playagain = "y"
until playagain == "n"

puts "Welcome to Tic-Tac-Toe!"

GameBoard.new.show_board

PlayGame.new

puts "Would you like to play again? y/n"
playagain = gets.chomp.downcase
end

