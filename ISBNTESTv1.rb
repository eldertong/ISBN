require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_true
		length = "0471958697"
		assert_equal(true, isbn(length))
	end