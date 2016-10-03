require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_valid_length
		length = "0471958697"
		assert_equal(true, isbn(length))
	end
    def test_nine_digit_isbn_returns_valid_length
		length = "047195869"
		assert_equal(false, isbn(length))
	end
end