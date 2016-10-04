def valid_isbn?(isbn)
    isbn.gsub!(" ", "") #this strips the whitespace and redifines isbn by using the !. remember ! is permenantish
    isbn.gsub!("-", "") #this strips the dashes from isbn and redefines it without them
    # isbn.delete!(" ") #this deletes the item in the quotes
    # isbn.delete!("-")
    isbn.length == 10 #same as doing and if else statement
end
