require 'pry'




def set_game
	@run = true
	@Player1 = {
		:id => 1,
		:num_attempts => 0,
		:score => 0,
	}
	@Player2 = {
		:id => 2,
		:num_attempts => 0,
		:score => 0,
	}
	puts "Player 1, please enter your name"
	@Player1[:name] = gets.chomp

	puts "Player 2, please enter your name"
	@Player2[:name] = gets.chomp
	@current_player = @Player1
end

def generate_num_one
	Random.new.rand(20)
end

def generate_num_two
	Random.new.rand(20)
end

def answer(one, two)
	one + two
end




def get_answer
	gets.chomp.to_i
end

def get_other(player)
	(player[:id] == 1) ? @Player2 : @Player1
end



def game_over(player)
	player[:num_attempts] >= 3
end



def run_turn(num_one, num_two)
	puts "#{@current_player[:name]}: What is #{num_one} + #{num_two}"
	answer = get_answer
	if answer == answer(num_one, num_two)
		puts "That is correct"
	else
		puts "That is incorrect"
		@current_player[:num_attempts] += 1
		if game_over(@current_player)
			puts "Game over. #{@current_player[:name]} loses. #{get_other(@current_player)[:name]} wins."
			@run = false
		end
	end
	@current_player = get_other(@current_player)
end

def run_game
	set_game
	while @run
		num_one = generate_num_one
		num_two = generate_num_two
		answer = answer(num_one, num_two)
		run_turn(num_one, num_two)
	end
	puts "Would you like to play again? (y/n)"
	again = gets.chomp.downcase
	case again
	when /y/
		@run = true
		run_game
	when /n/
		puts "Shutting down.."
	else
		puts "Command not recognized. Shutting down.."
	end

end

run_game


		