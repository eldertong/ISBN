def valid_isbn?(isbn)
    isbn = remove_spaces(isbn)
    isbn = remove_dashes(isbn)
    isbn.length == 10 #same as doing and if else statement
end

def remove_spaces(isbn)
    isbn.gsub(" ", "") #this strips the whitespace and redifines isbn by using the !. remember ! is permenantish
    # isbn.delete!(" ") #this deletes the item in the quotes
end

def remove_dashes(isbn)
    isbn.gsub("-", "") #this strips the dashes from isbn and redefines it without them
    # isbn.delete!("-")
end