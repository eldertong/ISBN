def isbn(pro)
    pro.to_s.split(//).map{|chr| chr.to_i}
	if pro.length == 10
        'valid'
    end
end