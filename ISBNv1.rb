def isbn(leng)
    if leng.length == 10
        "valid_ten"
    elsif leng.length == 13
        "valid_thirteen"
    else
        "invalid_length"
    end
end
