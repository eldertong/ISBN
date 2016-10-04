def valid_isbn?(isbn)
    isbn.gsub!(" ", "") || isbn.gsub!("-", "")#this strips the whitespace and redifines isbn by using the !. remember ! is permenantish
    isbn.length == 10 #same as doing and if else statement
end
