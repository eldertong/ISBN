def length(number)
	ten = 0
	thirteen = 0
    number = number.gsub(/[^0-9,^x,.]/, "")
	if number.length == 10
		ten = (proten)
	elsif number.length == 13
	 	thirteen = (prothirteen)
	end
end

def isbn(proten)
    proten = proten.gsub(/[^0-9,^x,.]/, "")
    arproten = proten.split(//,)
    arproten = arproten.map(&:to_i)
    sum = 0
    arproten.each.with_index do |value, index|
        break if index == 9
        sum += value * (index + 1)
    end
    check = sum % 11

    if check == arproten[9]
        true
    else
        false
    end

    check == arproten[9]

end

def isbnthirteen(prothirteen)
    prothirteen = prothirteen.gsub(/[^0-9,^x,.]/, "")
    arpro = pro.split(//,)
    arprothirteen = arprothirteen.map(&:to_i)
    sum = 0
    arpro.each.with_index do |value, index|
        break if index == 13
         if index % 2 == 0
             sum += value * 1
        else
            sum += value * 3
		end
	end
    checksum = sum % 10
	checksum1 = (10 - checksum)

	if checksum1 == array[12]
		true
	else
		false
	end

	checksum == array[12]

end





# def isbn(pro)
#     # ar_int = pro.split(//).map{|chr| chr.to_i}
#     #pro.to_s.split(//).map{|chr| chr.to_i} #take intiger from test and convert it to a string then split #the string and map it to an array by character and make each character in the array an intiger
#     if pro.gsub(/[^0-9,^x,.]/, "").length == 10
#         ar_int = pro.split(//).map{|chr| chr.to_i}
#         check_sum = (ar_int)([1.to_i]*1)+([2.to_i]*2)+([3.to_i]*3)+([4.to_i]*4)+([5.to_i]*5)+([6.to_i]*6)+([7.to_i]*7)+([8.to_i]*8)+([9.to_i]*9)
#         if (check_sum.to_i) % 11 == ar_int.last
#             "valid"
#         else
#             "invalid"
#         end
#     elsif pro.gsub(/[^0-9,^x,.]/, "").length == 13
#     'valid'
#     else
#     'invalid'
#     end
#     #puts ar_int # ar_int is an array of intigers that i can use to do math for further validation
# end

# #i think im trying to do too much in this one function.... im going to try to start again

# pro3 = 1234567891
# look into regex
# isbn(pro3)