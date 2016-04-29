class Turn 
	def initialize
		@num_one = generate_num_one
		@num_two = generate_num_two
		@answer = answer(@num_one, @num_two)
	end

	def generate_num_one
		Random.new.rand(20)
	end

	def generate_num_two
		Random.new.rand(20)
	end

	def answer(num_one, num_two)
		num_one + num_two
	end

	def get_answer
		answer = gets.chomp.to_i
	end

	def run_turn(num_one, num_two, player)
		puts "#{player.name}: What is #{num_one} + #{num_two}"
		answer = get_answer
		if answer == answer(num_one, num_two)
			puts "That is correct!"
			player.points += 1
		else
			puts "That is incorrect!"
			player.attempt_increase
		end
	end

	def game_over?(player)
		player.num_attempts == 3
	end
end