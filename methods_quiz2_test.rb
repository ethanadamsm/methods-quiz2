require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest2 < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_without_doubles
		assert_equal 5, @m.without_doubles(2, 2)
		assert_equal 6, @m.without_doubles(2, 4)
		assert_equal 7,@m.without_doubles(6, 6)
	end

	def test_max_maybe
		assert_equal 7, @m.max_maybe(6, 7)
		assert_equal 5, @m.max_maybe(5, 10)
		assert_equal 0, @m.max_maybe(6, 6)
		assert_equal 0, @m.max_maybe(10, 10)
	end 

	def test_squirrels_play?
		assert_equal true, @m.squirrels_play?(60, false)
		assert_equal true, @m.squirrels_play?(60, true)
		assert_equal true, @m.squirrels_play?(90, false)
		assert_equal true, @m.squirrels_play?(100, true)
		assert_equal false, @m.squirrels_play?(59, false)
		assert_equal false, @m.squirrels_play?(59, true)
		assert_equal false, @m.squirrels_play?(91, false)
		assert_equal false, @m.squirrels_play?(101, true)
	end

	def test_red_ticket
		assert_equal 10, @m.red_ticket(2, 2, 2)
		assert_equal 5, @m.red_ticket(1, 1, 1)
		assert_equal 5, @m.red_ticket(0, 0, 0)
		assert_equal 1, @m.red_ticket(0, 1, 1)
		assert_equal 0, @m.red_ticket(1, 2, 0)
	end

end
