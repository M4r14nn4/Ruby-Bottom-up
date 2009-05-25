#the famous 99 beers on the wall "challenge" - another I don't know how to make it useful for our purposes but maybe it will
#do for a nice example...

99.downto(0) do |bottles|            
  s = (bottles == 1 ? '' : "s")
  first_row = "#{bottles} bottle#{s} of beer on the wall, #{bottles} bottle#{s} of beer"
  second_row = "Take one down and pass it around, #{bottles} bottle#{s} of beer on the wall."
                     
  
  unless bottles == 0
    puts first_row
    puts second_row
    puts
  end
       
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."  
  
#other version, maybe easier to untangle for newbies
=begin

bottles = 100

while bottles != 1
  bottles -= 1            
  s = (bottles == 1 ? '' : "s")
  first_row = "#{bottles} bottle#{s} of beer on the wall, #{bottles} bottle#{s} of beer"
  second_row = "Take one down and pass it around, #{bottles} bottle#{s} of beer on the wall."
                     
  
  unless bottles == 0
    puts first_row
    puts second_row
    puts
  end
       
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
=end    