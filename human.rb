class HumanPlayer

	def choose_player
		puts "Would you like to play as 'X' or 'O'?"
		@result = gets.chomp
		until ["X", "O"].include?.(@result)
			puts "Sorry, you must choose 'X' or 'O', pick a letter." 
			@result = gets.chomp.upcase
		end

	def player_turner
		player = player == "X" ? "O" : "X"
	end
end