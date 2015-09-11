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

end
