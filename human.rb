class Human

	def initialize(name)
		@name = name
		self.choose_player
	end

	def name
		@name
	end

	def letter
		@result
	end

	def choose_player
		puts "Would you like to play as 'X' or 'O'?"
		@result = gets.chomp
		until ["X", "O"].include?(@result)
			puts "Sorry, you must choose 'X' or 'O', pick a letter." 
			@result = gets.chomp.upcase
		end
	end

	def player_turner
		player = player == "X" ? "O" : "X"
	end
end

