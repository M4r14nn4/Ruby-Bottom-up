# created for visualising which logical steps can easily lead to the 'short' solution of representing integers as 'old-school'
# roman nums. Written to show the logic only... 

def roman_helper(arabic_num)  
  if arabic_num < 5
    puts 'I' * arabic_num
  #integers between 5 and 9  
  elsif arabic_num >= 5 && arabic_num < 10
    puts "V#{'I' * (arabic_num%5)}"
  
  #integers between 10 and 49  
  elsif arabic_num >= 10 && arabic_num < 50
    if arabic_num%10 < 5 
      puts "#{'X' * (arabic_num/10)}#{'I' * (arabic_num%10)}"
    else 
      puts "#{'X' * (arabic_num/10)}V#{'I' * (arabic_num%5)}"       
    end
  
  #integers between 50 and 99
  elsif arabic_num >= 50 && arabic_num < 100
    if arabic_num%10 < 5
      puts "L#{'X' * ((arabic_num - 50)/10)}#{'I' * (arabic_num%5)}"
    else
      puts "L#{'X' * ((arabic_num - 50)/10)}V#{'I' * (arabic_num%5)}" 
    end  
  #integers between 100 and 499
  
  elsif arabic_num >=100 && arabic_num < 500
    if arabic_num%100 < 50  
      if arabic_num%10 < 5
        puts "#{'C' * (arabic_num/100)}#{'X' * ((arabic_num%100)/10)}#{'I' * (arabic_num%5)}"
      else 
        puts "#{'C' * (arabic_num/100)}#{'X' * ((arabic_num%100)/10)}V#{'I' * (arabic_num%5)}" 
      end
    else
      if arabic_num%10 < 5
        puts "#{'C' * (arabic_num/100)}L#{'X' * (((arabic_num - 50)%100)/10)}#{'I' * (arabic_num%5)}"
      else
        puts "#{'C' * (arabic_num/100)}L#{'X' * (((arabic_num - 50)%100)/10)}V#{'I' * (arabic_num%5)}"
      end    
    end          
  
  #integers between 500 and 999
  elsif arabic_num >=500 && arabic_num < 1000
    if arabic_num%100 < 50  
      if arabic_num%10 < 5
        puts "D#{'C' * ((arabic_num-500)/100)}#{'X' * ((arabic_num%100)/10)}#{'I' * (arabic_num%5)}"
      else 
        puts "D#{'C' * ((arabic_num-500)/100)}#{'X' * ((arabic_num%100)/10)}V#{'I' * (arabic_num%5)}" 
      end
    else
      if arabic_num%10 < 5
        puts "D#{'C' * ((arabic_num-500)/100)}L#{'X' * (((arabic_num - 50)%100)/10)}#{'I' * (arabic_num%5)}"
      else
        puts "D#{'C' * ((arabic_num-500)/100)}L#{'X' * (((arabic_num - 50)%100)/10)}V#{'I' * (arabic_num%5)}"
      end    
    end
  end
end  