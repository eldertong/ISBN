def isbn(pro)
    pro.to_s.split(//).map{|chr| chr.to_i} #take intiger from test and convert it to a string then split the string and map it to an array by character and make each character in the array an intiger
	if pro.to_s.length == 10
        'valid'
    elsif pro.to_s.length == 13
        'valid'
    else
        'invalid'
    end
end