require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	# def test_ten_digit_number_results_valid
	# 	pro = "1234567891"
	# 	assert_equal('valid', isbn(pro))
	# end
	# def test_nine_digit_number_results_invalid
	# 	pro = "123456789"
	# 	assert_equal('invalid', isbn(pro))
	# end
	# def test_thirteen_digit_number_results_valid
	# 	pro = "1234567891234"
	# 	assert_equal('valid', isbn(pro))
	# end
	# def test_twenty_digit_number_results_invalid
	# 	pro = "12345678912345678912"
	# 	assert_equal('invalid', isbn(pro))
	# end
	# def test_ten_digit_with_space_valid_length
	# 	pro = "1 23456789 1"
	# 	assert_equal('valid', isbn(pro))
	# end
	# 	def test_ten_digit_with_dashes_valid_length
	# 	pro = "1-2-3 45- 6789 1"
	# 	assert_equal('valid', isbn(pro))
	# end
	# 	def test_ten_digit_with_x_valid_length
	# 	pro = "877195869x"
	# 	assert_equal('valid', isbn(pro))
	# end
	# def test_ten_digit_with_at_symbol_invalid_length
	# 	pro = "0-321@14653-0"
	# 	assert_equal('valid', isbn(pro))
	# end
	def test_valid_ten_digit_isbn_returns_valid
		pro = "0471958697"
		assert_equal('valid', isbn(pro))
	end
end

#test