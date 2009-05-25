#Given a string contains some representation of a number, you want to get the corresponding integer or float
#
#good to know:  - use String#to_i to turn string into integer
#               -   String#to_f to turn string to float
#               - use String#hex or String#oct to get the decimal equivalent of a string that represents a hex or octal string.
#                 This is the same as passing the base of the number into to_i


#if the method finds a character that can't be part of the kind of number it is looking for, it stops the processing and returns 
#the number so far (if the first character is unusable it returns 0)
"99 beers on the wall".to_i     # => 99                             

#to extract a num from a larger string (or a string that does not contain the num at the beginning, which happens in most of the 
# cases I believe) - use regexp  

#check out the scanf module! some pretty good stuff there...







