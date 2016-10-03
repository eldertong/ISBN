def isbn(leng)
    leng = leng.gsub(/[^0-9,^x,.]/, "") #removes spaces and dashes, allows numbers and x
    if leng.length == 10
        "valid 10" #displays that it is valid if the string is 10 digits
        elsif leng.length == 13
        "valid 13"
    else
        'invalid length'
    end
end


def isbn10(pro)
    pro = pro.gsub(/[^0-9,^x,.]/, "") #removes dashes and spaces from string while allowing numbers and x
    pro = pro.split(//) #turns string of numbers into array of individual strings of numbers
    pro.map(&:to_i) #turns the array of strings to an array of intigers
    "valid ten digit isbn"
end



isbn10("0471958697")
puts pro

