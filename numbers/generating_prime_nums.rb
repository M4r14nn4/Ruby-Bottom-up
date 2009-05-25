# Challenge: You want to generate a sequence of prime nums or find all primes below a certain threshold - use the Sieve of
# Erathostenes

# GTK: A prime sieve or prime number sieve is a fast type of algorithm for finding primes. There are many prime sieves,
# but the simple sieve of Eratosthenes, the faster but more complicated sieve of Atkin, and the various wheel sieves
# are most common.
# A prime sieve works by creating a list of all integers up to a desired limit and progressively removing composite numbers until only primes are left. This is the most efficient way to obtain a large range of primes; however, 
# To find individual primes, direct primality tests are more efficient.

# Sieve of Erathosthenes - a simple algorithm for finding all prime numbers up to a specified integer.
#
# Algorithm:
# 1. Create a contiguous list of numbers from two to some integer n.
# 2. Strike out from the list all multiples of two (4, 6, 8 etc.).
# 3. The list's next number that has not been struck out is a prime number.
# 4. Strike out from the list all multiples of the number you identified in the previous step.
# 5. Repeat steps 3 and 4 until you reach a number that is greater than the square root of n.
# 6. All the remaining numbers in the list are prime.
                                
# GTK step1: Enumerable module can be turned into arrays with the method 'to_a'.
#            e.g. array =(1..5).to_a => [1,2,3,4,5]


def primeSieve(upperBound)
  #returns all prime number less than the upperBound
  numbers = (2..upperBound).to_a
  primes = []
  prime = 2
  while prime < Math.sqrt(upperBound) do
    prime = numbers.first
    primes.push(prime)
    numbers = numbers.reject{|num| num%prime == 0}
  end
  primes.push(numbers).flatten    
end  

p primeSieve(1000)

# What happened here?
#
# 1. we have created an array that contains numbers from 2 (the first prime) up to upperBoud
# 2. we have created an empty 'primes' array that will hold the found primes 
# 3. called a while loop until the numbers array is empty (we have rejected all its elements, see next step)
#      the while loop:      I.   grab the first element of the array 'numbers' and store it in the 'prime' variable
#                           II.  push the value stored in the 'prime' variable into the 'primes' array'
#                           III. from the numbers array reject all the elements that are dividable by the value stored in 'prime'
#                           IV.  repeat until 
# 4. return the 'primes' array 