class Player

	attr_accessor :name, :id, :score, :num_attempts
	attr_writer :score, :num_attempts

	def initialize(id)
		puts "Please enter a name for player #{id}"
		@name = gets.chomp
		@id = id
		@score = 0
		@num_attempts = 0
	end
end