require "minitest/autorun"
require_relative "isbnv2.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_valid_length
		leng = "0471958697"
		assert_equal('valid 10', isbn(leng))
	end