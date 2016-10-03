require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_true
		length = "0471958697"
		assert_equal(true, isbn(length))
	end
	def test_invalid_ten_digit_isbn_returns_false
		length = "0471958698"
		assert_equal(false, isbn(length))
	end
	def test_valid_thirteen_digit_isbn_returns_true
		length = "9780470059029"
		assert_equal(true, isbn(length))
	end
end

#test