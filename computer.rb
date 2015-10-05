class ComputerPlayer

	def initialize
	end

	def take_turn
		until GameBoard.available_moves.include(move)
		move = rand(1..9)
		end
		move
	end

end