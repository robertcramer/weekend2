require './game'
require './board'

require 'pry'


class Play

	def initialize
		@board = Board.new
		@game = Game.new
	end


	def tictactoe
		@game.greeting
		@board.show_board
		player_1 = "X"
		player_2 = "O"
		current_player = player_1
		until @game.game_over
			puts "#{current_player}'s Turn"
			@board.board[gets.chomp.to_i-1] = current_player
			@board.show_board
			if current_player == player_1
				current_player = player_2
			else
				current_player = player_1
			end
		end
		@game.postmortem
	end

end

play = Play.new
play.tictactoe

