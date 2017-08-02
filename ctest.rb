

require "minitest/autorun"
require_relative "calcpart.rb"


class Testmath < Minitest::Test

	def test_calcy
		assert_equal(1,1)
	end
 
	def test_2_2_eq_4
		n1 = 2
		n2 = 2
		op = "add"
		assert_equal(4, calcy(op, n1, n2))
	end	

	def test_subtr
		n1 = 5
		n2 = 3
		assert_equal(2, calcy("subt", n1, n2))
	end
		
	def test_div_0
		n1 = 4
		n2 = 0
		assert_equal(0, calcy("div", n1, n2))
	end

end	
		    