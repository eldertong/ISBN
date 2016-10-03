require "minitest/autorun"
require_relative "isbnv1.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_returns_valid_length
		leng = "0471958697"
		assert_equal('valid 10', isbn(leng))
	end
    def test_nine_digit_isbn_returns_invalid_length
		leng = "047195869"
		assert_equal('invalid length', isbn(leng))
	end
    def test_thirteen_digit_isbn_returns_valid_length
		leng = "9780470059029"
		assert_equal('valid 13', isbn(leng))
	end
	def test_valid_ten_digit_isbn_with_spaces_and_dashes_returns_valid_length
		leng = "04-719-58  697"
		assert_equal('valid 10', isbn(leng))
    end
    def test_thirteen_digit_isbn_with_dashes_and_spaces_returns_valid_length
		leng = "978  047-0059029"
		assert_equal('valid 13', isbn(leng))
	end
    def test_thirteen_digit_isbn_returns_valid_isbn
		leng = "9780470059029"
		assert_equal('valid 13', isbn(leng))
	end
    # def test_10_isbn_returns_valid_isbn
	# 	leng = "0471958697"
	# 	assert_equal("valid ten digit isbn", isbn(leng))
    # end
end