



def isbn(pro)
    # ar_int = pro.split(//).map{|chr| chr.to_i}
    #pro.to_s.split(//).map{|chr| chr.to_i} #take intiger from test and convert it to a string then split #the string and map it to an array by character and make each character in the array an intiger
    if pro.gsub(/[^0-9,^x,.]/, "").length == 10
        ar_int = pro.split(//).map{|chr| chr.to_i}
        check_sum = ar_int (([1]*1)+([2]*2)+([3]*3)+([4]*4)+([5]*5)+([6]*6)+([7]*7)+([8]*8)+([9]*9))
        if check_sum % 11 == ar_int.last
            "valid"
        else
            "invalid"
        end
    elsif pro.gsub(/[^0-9,^x,.]/, "").length == 13
    'valid'
    else
    'invalid'
    end
    #puts ar_int # ar_int is an array of intigers that i can use to do math for further validation
end

# pro3 = 1234567891
# look into regex
# isbn(pro3)