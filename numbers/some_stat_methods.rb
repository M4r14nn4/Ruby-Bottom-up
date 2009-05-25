# a lovely spot to introduce Enumerable#inject :) 
# Summing numbers is the most common example for using inject:
#[1, 2, 3, 4].inject(0) { |result, element| result + element } # => 10

#Lovely isn't it? Here is what it does:

#So, the block will be executed 4 times, once for every element of our array ([1,2,3,4]). 
#The first time the block executes the result argument will have a value of 0 (the value we passed as an argument to inject) 
#and the element argument will have a value of 1 (the first element in our array).

#The second time the block is executed the result of the previous block execution, 1, will be yielded as the result, 
#and the second element of the array will be yielded as the element. 
#Again the result, 1, and the element, 2 will be added together, resulting in the return value of the block being 3.

#The argument to inject is actually optional, this works perfectly well:
#[1, 2, 3, 4].inject { |result, element| result + element } # => 10

#MEAN (~average ;)
#keep in mind to use the .to_f method in order to get a float as a result

def mean(array)
  array.inject(0) { |sum, element| sum += element}/array.length.to_f
end  

#puts mean([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])

#MEDIAN
#median is described as the number separating the higher half of a sample, a population, or a probability distribution, 
#from the lower half.

#The median of a finite list of numbers can be found by arranging all the observations from lowest value to highest value
#and picking the middle one.

#For example, if a < b < c, then the median of the list {a, b, c} is b,
# and if a < b < c < d, then the median of the list {a, b, c, d} is the mean of b and c, i.e. it is (b + c) / 2.

# good to know: array.empty? => true or false (Returns true if array contains no elements)

#good to know: arrays that contain only one data type (strings, nums...) can be sorted by using Array#sort
# like: [1,-1,3].sort => [-1,1,3]

#time to introduce: ternary operator
#<ondition> ? <result if condition is true> : <result if condition is false>

#don't forget that the median can be a float even if you have only integers in the array!  

# you might wonder if there is an even number of elements in the array why do we use array.sort[array.length/2] instead of
# array.sort[array.length/2 - 1]? It is a no brainer, really, the trick is that when you do arithmetic with integers, you
# get integer results (in our case by rounding down the answer) which perfectly suits us in this case!

# ok, let's see an example: 
# [1,2,3,4,5].legth/2  => 2
# if you knew nothing about integers and floats and such things you could expect 2.5 as answer, now that you know how Ruby
# does "integer arithmetic" the result is not a suprise any more (and the one we need :)!  
  

def median(array) 
  return nil if array.empty?
  sorted_array = array.sort
  array_length = array.length
  x1 = sorted_array[array_size/2]
  x2 = sorted_array[array_array/2-1]
  array.length%2 == 1 ? x1 : (x1 + x2).to_f/2)   
end

# a bit more sophisticated version ;) - takes into account if the array is already sorted + reuses the above created mean method

#good to know: Ruby lets you specify default values for a method's arguments-values that will be used if the caller doesn't pass
#              them explicitly. You do this using the assignment operator - just like here: 
#              method(argument1 = "argument", argument2 = false)
# NOTE: there is no way, to specify a value for the second parameter and use the default value of the first parameter. 

#good to know: array[0..5] returns an array which will contain the elements that can be found on the given range of indices

def soph_median(array, already_sorted = false)
  return nil if array.empty? 
  array = array.sort unless already_sorted
  m_pos = array.length/2
  return array.length%2 == 1 ? array[m_pos] : mean(array[m_pos-1..m_pos]) 
end

#there are maaaany more...but we're going to stop right here for now.   
 


   