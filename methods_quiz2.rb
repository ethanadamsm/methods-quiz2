module MethodsQuiz2
	
	def without_doubles(die_one, die_two)
		if dice_equal?(die_one, die_two) 
			if is_die_six?(die_one)
				7
			else
				die_one + die_two + 1
			end
		else
			die_one + die_two
		end
	end

	def dice_equal?(die_one, die_two)
		die_one == die_two 
	end

	def is_die_six?(die)
		die == 6
	end

end