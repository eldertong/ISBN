def isbn(leng)
    if leng.length == 10
        "valid 10"

    elsif leng.length == 13
        "valid 13"
    else
        'invalid length'
    end
end

def isbn10(pro)
    pro = pro.gsub(/[^0-9,^x,.]/, "")
end