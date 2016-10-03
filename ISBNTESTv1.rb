require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_valid_length
		leng = "0471958697"
		assert_equal("valid_ten", isbn(leng))
	end
    def test_nine_digit_isbn_returns_invalid_length
		leng = "047195869"
		assert_equal("valid_thirteen", isbn(leng))
	end
    def test_thirteen_digit_isbn_returns_valid_length
		leng = "9780470059029"
		assert_equal("invalid_length", isbn(leng))
	end
end