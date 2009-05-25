#Challenge: tell me which is the 1st leap year that is dividable by 57 starting from the year 1970!
#good to know: leap years are years divisible by 4
#              years divisible by 100 are not leap years unless they are divisible by 400
#              use floats instead of integers!
#              modulus flt%flt

year = 1970
  
  while year%57.0 != 0  
    year += 4
  end

puts "The first leap-year that is dividable by 57 starting from 1970 is #{year}" 

  
 
  