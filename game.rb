require 'pry'

class Game
	def initialize
		board = Board.new
	end

	Win = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],
		[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

	def greeting
		puts "Welcome to Tic-Tac-Toe"
		puts "Player 1 is X."
	end

	def game_over(board)
		win?(board) || draw?(board)
	end

	def win?(board)
		Win.any? do |x,y,z|
			board[x] == board[y] && board[y] ==board[z]
		end
	end

	def draw?(board)
		available_moves(@board).empty?
	end

	def available_moves 
		@board.reject { |x| x.is_a?(String) }
	end


end



