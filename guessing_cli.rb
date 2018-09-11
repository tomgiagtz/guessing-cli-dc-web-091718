# Code your solution here!
def run_guessing_game
	loop = true
	while loop
		prompt_user
		u_guess = get_input
		c_guess = rand(1..6)

		
		if u_guess == "exit"
			loop = false
			end_game
		elsif u_guess.to_i == c_guess
			correct_answer
		else
			wrong_answer(c_guess)
		end

	end
end

def prompt_user
	puts "Guess a number between 1 and 6."
end

def get_input
	gets.chomp
end

def correct_answer
	puts "You guessed the correct number!"
end

def wrong_answer(answer)
	puts "The computer guessed #{answer}."
end

def end_game
	puts "Goodbye!"
end