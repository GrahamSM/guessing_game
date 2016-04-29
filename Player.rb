class Player

	attr_accessor :name, :id, :score, :num_attempts, :points
	attr_writer :score, :num_attempts

	def initialize(id)
		puts "Please enter a name for player #{id}"
		@name = gets.chomp
		@id = id
		@score = 0
		@num_attempts = 0
		@points = 0
	end

	def attempt_increase
		@num_attempts += 1
	end
end