def valid_isbn?(isbn)
    isbn = remove_spaces(isbn) #calls the function referenced and redefines isbn
    isbn = remove_dashes(isbn)
    if valid_isbn_ten_length?(isbn) && valid_isbn_ten_check_sum?(isbn)
        true
        puts 1
    elsif valid_isbn_thirteen_length?(isbn) && valid_isbn_thirteen_check_sum?(isbn)
        true
        puts 2
    else
        false
        puts 3
    end
end

def valid_isbn_ten_length?(isbn)
    isbn.length == 10
end

def valid_isbn_thirteen_length?(isbn)
    isbn.length == 13 # checks to see if isbn length is equal to 13
end

def valid_isbn_ten_check_sum?(isbn)
    ten_digit_array = isbn.chars.map!(&:to_i)
    sum = 0
    ten_digit_array.each_with_index do |value, index|
        break if index == 9
        sum += (index + 1) * value
    end
    check_sum = sum % 11
    if check_sum == 10
        check_sum = "X"
    end
    check_sum_string = check_sum.to_s
    if check_sum_string == isbn[-1].upcase
        true
    else
        false
    end
end

def valid_isbn_thirteen_check_sum?(isbn)
    sum = 0 # sets value of sum to 0
    thirteen_digit_array = isbn.chars.map!(&:to_i) # splits the string into an array of individual characters as intigers
    thirteen_digit_array.each_with_index do |value, index| # iterates through the array setting the value and index position to a variable
        break if index == 12 # stops the do loop at position 12 of the array
            if index % 2 == 0 # looks to see if the index modulo 2 is equal to 0
                sum += value * 1 # sets sum equal to the sum plus the value times 1
            else
                sum += value * 3 # sets sum equal to the sum plus the value times 3
            end
        end #!!!Jeremy's Fix!!!   added to end the loop function, this was previously after the conditional statement and did not let the conditional statement go through
    pre_check_sum = sum % 10 # sets pre_check_sum equal to sum modulo 10
    check_sum = 10 - pre_check_sum # sets check_sum equal to ten minus pre_check_sum
    end_check_sum = check_sum % 10
    end_check_sum_string = end_check_sum.to_s
    if end_check_sum_string == isbn[-1] # looks to see if check_sum is equal to position 12 of thirteen_digit_array and returns true or false
        true
    else
        false
    end
end

def remove_spaces(isbn)
    isbn.gsub(" ", "") #this strips the whitespace and redifines isbn by using the !. remember ! is permenantish
    # isbn.delete!(" ") #this deletes the item in the quotes
end

def remove_dashes(isbn)
    isbn.gsub("-", "") #this strips the dashes from isbn and redefines it without them
    # isbn.delete!("-")
end

  #multiply each digit in the string by it's position for the first 9 digits, then add them and "modulo" cuz thats not a real word! by 11, this should equal the last digit
    # ten_digit_array = isbn.chars.map!(&:to_i) #splits the string into an array of individual characters as intigers & is shorthand for something longer - research this later
    # sum = 0
    # ten_digit_array.each_with_index do |value, index|
    #     break if index == 9
    #     sum += (index + 1) * value
    # end