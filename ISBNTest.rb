require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	def test_ten_digit_number_results_valid
		isbn = [1234567891]
		assert_equal("valid", isbn(prop))
	end
end