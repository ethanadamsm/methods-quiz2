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
		if is_equal?(a, b)
			0 
		else
			if divisable_5?(a) && divisable_5?(b)
				smaller?(a, b) ? a : b
			else
				smaller?(a, b) ? b : a 
			end
		end
	end

	def smaller?(a, b)
		a < b 
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