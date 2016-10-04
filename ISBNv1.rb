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
    if pro[9] == "x"
        pro[9] = "10"
    end
    pro = pro.map(&:to_i) #turns the array of strings to an array of intigers
    sum = 0 #creates new variable and set to 0 so i can build on it
    pro.each.with_index do |value, index|  #this is where the magic happens, we are doing something with the index
        break if index == 9 #this means that when the function will stop looping when it reaches the 9th place
        sum += value * (index + 1) #now every time it runs through the function for the each place it will add the sum up and add one to the index position
    end #ends this portion of the function
    check10 = sum % 11  #sets checksum to the sum of the sets in the array times their place number divided by 11
    if check10 == pro[9]  #this compares the checksum and the 10th number in the array, which should be the checksum
        "valid ten digit isbn"
    else
        "invalid ten digit isbn"
    end
end

def isbn13(pro3)
    pro3 = pro3.gsub(/[^0-9,^x,.]/, "")
    13arr = pro3.split(//,)
    13arr = 13arr.map(&:to_i)
    sum = 0
    13arr.each.with_index do |value, index|
        break if index == 12
        if index % 2 == 0
            sum += (value * 1)
        else
            sum += (value * 3)
        end
    end
    chek = sum % 10
    check1 = (10 - chek)

    if check1 == 13arr[12]
        'valid thirteen digit isbn'
    else
        'invalid thirteen digit isbn'
    end
end