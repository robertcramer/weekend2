require 'pry'


WIN = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],
[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

class Game
	def initialize
		@board = Board.new
	end

	def greeting
		puts "Welcome to Tic-Tac-Toe"
		puts "Player 1 is X."
	end

	def game_over
		@board.win? || @board.draw?
	end

	def postmortem
		puts "hello"
	end

	def tictactoe
		greeting
		@board.show_board
		player_1 = "X"
		player_2 = "O"
		current_player = player_1
		until game_over
			puts "#{current_player}'s Turn"
			@board.board[gets.chomp.to_i-1] = current_player
			@board.show_board
			if current_player == player_1
				current_player = player_2
			else
				current_player = player_1
			end
		end
		postmortem
	end


end



