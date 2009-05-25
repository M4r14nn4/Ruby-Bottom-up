# Array Method: Let's us some "array magic" - we'll save previous values to an array for lookup (enable linear computation)
# pros: faster than recursion
# cons: uses more memory 

# NOTE: array indices start from 0!
#       array[-1] references the last element, array[-2] the element before the last element

# GTK: array.push(obj, ... ) → array
#      Pushes the given object(s) on to the end of this array. 
#      This expression returns the array itself, so several appends may be chained together.
# 
#  a = [ "a", "b", "c" ]
#  a.push("d", "e", "f")  => ["a", "b", "c", "d", "e", "f"]

def fib(n)     
  return "Pls enter a natural number" if n.is_a? Fixnum && n < 0                  
  
  fib_vals = [0,1]
  unless n < 2 
    n.times {fib_vals.push(fib_vals[-1] + fib_vals[-2])} 
    fib_vals.last
  else 
    n
  end   
end

#puts fib(5)    => 8
#puts fib(0)    => 0
#puts fib(-2)   => "Pls enter a natural number"

# What have happened here?
#
# 1. we have checked if 'n' is a natural number
# 2. created a fib_vals array
# 3. n times pushed fibonacci values to the fib_vals array
# 4. returned the last value of fib_lat if n > 1, othervise returned n  
