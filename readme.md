# Coin Changer

The International Standard Book Number (ISBN) is a unique numeric commercial book identifier.

An ISBN is assigned to each edition and variation of a book. For example, an e-book, a paperback and a hardcover edition of the same book would each have a different ISBN. The ISBN is 13 digits long if assigned on or after 1 January 2007, and 10 digits long if assigned before 2007. The method of assigning an ISBN is nation-based and varies from country to country, often depending on how large the publishing industry is within a country.

The initial ISBN configuration of recognition was generated in 1967 based upon the 9-digit Standard Book Numbering (SBN) created in 1966. The 10-digit ISBN format was developed by the International Organization for Standardization (ISO) and was published in 1970 as international standard ISO 2108 (the SBN code can be converted to a ten digit ISBN by prefixing it with a zero).

-   I was taked to create a program that will verify if a string is a valid ISBN number
    -   Requirements
        -   Use a TDD approach
        -   ISBN-10 is made up of 9 digits plus a check digit (which may be 'X') and ISBN-13 is made up of 12 digits plus a check digit. Spaces and hyphens may be included in a code, but are not significant.
             -   This means that 9780471486480 is equivalent to 978-0-471-48648-0 and 978 0 471 48648 0.
             -   The check digit for ISBN-10 is calculated by multiplying each digit by its position (i.e., 1 x 1st digit, 2 x 2nd digit, etc.), summing these products together and taking modulo 11 of the result (with 'X' being used if the result is 10).
             -   The check digit for ISBN-13 is calculated by multiplying each digit alternately by 1 or 3 (i.e., 1 x 1st digit, 3 x 2nd digit, 1 x 3rd digit, 3 x 4th digit, etc.), summing these products together, taking modulo 10 of the result and subtracting this value from 10, and then taking the modulo 10 of the result again to produce a single digit.
            -   Examples of valid ISBN-13: 
                -  "9780470059029"
                -  "978-0-13-149505-0"
                -  "978 0 471 48648 0"
             -  Examples of valid ISBN-10:
                -  "0471958697"
                -  "0-321-14653-0"
                -  "877195869x"
            -  Examples of invalid ISBNs:
                -  "4780470059029"
                -  "0-321@14653-0"
                -  "877195x869"
            -  Example of how the ISBN-10 sumcheck is calculated:
                -  first 9 digits of an isbn10: 742139476
            -  create checksum:
                -  sum = 1*7 + 2*4 + 3*2 + 4*1 + 5*3 + 6*9 7*4 + 8*7 + 9*6
                -  sum = 7 + 8 + 6 + 4 + 15 + 54 + 28 + 56 + 54
                -  sum = 232
                -  checksum = 232%11
                -  checksum = 1
                -  isbn = 7421394761 

  - I was able to break this down into multiple sections
    - First to check is all characters are valid and then to run the checksum on the ISBN once the length is determined