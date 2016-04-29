require "./Player"
require "./Turn"
require "./Game"

class Main

	def initialize
		#Empty
	end
	def run
		game = Game.new
		run = true
		current_player = game.player_one 
		while run
			turn = Turn.new
			num_one = turn.generate_num_one
			num_two = turn.generate_num_two
			answer = turn.answer(num_one, num_two)
			turn.run_turn(num_one, num_two, current_player)
			if turn.game_over?(current_player)
				puts "Game over! #{current_player.name} loses. #{game.get_other(current_player).name} is the winner!"
				run = false
			end
			current_player = game.get_other(current_player)
		end
	end
end

main = Main.new
main.run














