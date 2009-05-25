#Challenge: write a method that, when passed an integer between 1 and 3999 (or more perhaps?) returns the string containing
# the correct Roman numeral
# version A: use "old-school Roman numerals" - assume that Roman numerals are constituted the following way: they have used 
# straight addition (biggest to littlest) to form the numerals, so 9 would be VIIII instead of IX.
# version B: use "modern Roman numerals"
# so question could be: tell me what is the Roman numeral equivalent of X?
#
#Keep in mind: strings inside #{} must be put in ''
#              x%y must be put in parenthesis while * has a higher "priority"
#              pay attention to the math! watch out for priorities and what you really want the program to count (4*6/3 != 4*(6/3))
#              when "multipliing" strings, string must go first e.g. 'I' *  8  (won't work the other way around :)
#I guess this challenge calls for tests, so perhaps it could be a kinda introductionary challenge to testing...


def old_school_roman_num(arabic_num)
  "#{thousands(arabic_num)}#{houndreds(arabic_num)}#{tens(arabic_num)}#{ones(arabic_num)}"
end

def thousands(arabic_num)
  'M' * (arabic_num/1000)
end  

def houndreds(arabic_num)
  arabic_num%1000 < 500 ? ('C' * ((arabic_num%1000)/100)) : "D#{'C' * (((arabic_num%1000) - 500)/100)}"
end  

def tens(arabic_num)
  arabic_num%100 < 50 ? 'X' * ((arabic_num%100)/10) : "L#{'X' * (((arabic_num - 50)%100)/10)}"
end  

def ones(arabic_num)
  arabic_num%10 < 5 ? ('I' * (arabic_num%5)) : "V#{'I' * (arabic_num%5)}"
end

      


puts old_school_roman_num(1234)

   


