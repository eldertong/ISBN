require "minitest/autorun"
require_relative "isbnv2.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_true
		isbn = "0471958697"
		assert_equal(true, valid_isbn?(isbn))
	end
	def test_empty_string_returns_false
		isbn = ""
		assert_equal(false, valid_isbn?(isbn))
	end
	def test_valid_isbn_with_spaces_returns_true
		isbn = "0 47 19 58 697"
		assert_equal(true, valid_isbn?(isbn))
	end
	def test_valid_isbn_with_dashes_returns_true
		isbn = "0-47-19 58 697"
		assert_equal(true, valid_isbn?(isbn))
	end
	def test_invalid_isbn_10_returns_false
		isbn = "0471958699"
		assert_equal(false, valid_isbn?(isbn))
	end
	def test_valid_isbn_10_returns_true
		isbn = "2471958699"
		assert_equal(true, valid_isbn?(isbn))
	end
	def test_valid_isbn_10_with_spaces_dashes_returns_true
		isbn = "2 4- 71-9   58699"
		assert_equal(true, valid_isbn?(isbn))
	end
	def test_valid_isbn_10_with_an_x_at_the_end_returns_true
		isbn = "877195869x"
		assert_equal(true, valid_isbn?(isbn))
	end
	def test_valid_isbn_10_with_a_capital_x_at_the_end_returns_true
		isbn = "877195869X"
		assert_equal(true, valid_isbn?(isbn))
	end
	def test_invalid_isbn_10_with_a_capital_x_at_the_end_returns_false
		isbn = "877195861X"
		assert_equal(false, valid_isbn?(isbn))
	end
end