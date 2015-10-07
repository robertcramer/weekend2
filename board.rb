class Board

	def initialize
		@board = (1..9).to_a
	end

	def board
		@board
	end

	def show_board
		puts "
     		#{@board[0]} | #{@board[1]} | #{@board[2]}
     		#{@board[3]} | #{@board[4]} | #{@board[5]}
     		#{@board[6]} | #{@board[7]} | #{@board[8]}
  		"
  	end
end





