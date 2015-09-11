module MethodsQuiz2
	
	def without_doubles(die_one, die_two)
		if is_equal?(die_one, die_two) 
			if is_die_six?(die_one)
				7
			else
				die_one + die_two + 1
			end
		else
			die_one + die_two
		end
	end

	def max_maybe(a, b)
		if a == b
			0 
		else
			if divisable_5?(a) && divisable_5?(b)
				a < b ? a : b
			else
				a < b ? b : a 
			end
		end
	end

	def squirrels_play?(temp, season)
		season ? squirrel_temps?(60, 100, temp)	: squirrel_temps?(60, 90, temp)
	end

	def red_ticket(a, b, c)
		if a == b && b == c && a == 2
			10
		elsif a == b && b == c
			5
		elsif b == c && a != b
			1
		else
			0			
		end
	end

	def squirrel_temps?(lowerl, higherl, temp)
		temp >= lowerl && temp <= higherl
	end

	def divisable_5?(x)
		x % 5 == 0
	end

	def is_equal?(a, b)
		a == b
	end

	def is_die_six?(die)
		die == 6
	end

end