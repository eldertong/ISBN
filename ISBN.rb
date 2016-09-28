



def isbn(pro)
    ar_int = pro.to_s.split(//).map{|chr| chr.to_i}
    #pro.to_s.split(//).map{|chr| chr.to_i} #take intiger from test and convert it to a string then split #the string and map it to an array by character and make each character in the array an intiger
    if pro.to_s.length == 10
    'valid'
    elsif pro.to_s.length == 13
    'valid'
    else
    'invalid'
    end
    puts ar_int # ar_int is an array of intigers that i can use to do math for further validation
end

# pro3 = 1234567891

# isbn(pro3)