class Game

	attr_accessor :player_one, :player_two

	def initialize
		puts "Welcome to the addition game!"
		puts "Rules: Players take turns answering simple addition questions."
		puts "The first player to get three answers wrong loses."
		puts "Ready to play? (y/n)"
		answer = gets.chomp.downcase
		if answer == /n/
			#abort
		end
		@player_one = Player.new(1)
		@player_two = Player.new(2)
	end

	def get_other(player)
		if player == @player_one
			@player_two
		else
			@player_one
		end
	end
end