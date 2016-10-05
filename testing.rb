require_relative "isbn_class.rb"

isbn = "9780470059029"


b = valid_isbn_thirteen_check_sum?(isbn)
puts "b = #{b}"