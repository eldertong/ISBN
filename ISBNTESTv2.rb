require "minitest/autorun"
require_relative "isbnv2.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_true
		isbn = "0471958697"
		assert_equal(true, valid_isbn?(isbn))
	end
end