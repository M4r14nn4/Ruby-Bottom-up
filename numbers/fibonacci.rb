# Challenge: create a Fibonacci sequence (print to the console the first n elements of the Fibonacci sequence)

# GTK:The Fibonacci numbers are the integer sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, ..., 
# in which each item is formed by adding the previous two. 
# The sequence can be defined recursively by:
#
#      = 0                  n=0
# F(n) = 1                  n=1
#      = F(n-1) + F(n-2)    n>1
# 

# RECURSION

# What the heck is recursion?  
# Solving a problem using recursion means the solution depends on solutions to smaller instances of the same problem. 
# (in our case the soulution of fib(5) depends on solution of fib(4) and fib(3))

#Here is another, perhaps simpler way to understand recursive processes:

#   1. Are we done yet? If so, return the results. Without such a termination condition a recursion would go on forever.
#   2. If not, simplify the problem, solve the simpler problem(s), and assemble the results into a solution for the original problem. Then return that solution.

# cons: extremely expensive - it computes many Fib values from skratch many times
 
# This is a good one: Or perhaps more accurate is the following, from Andrew Plotkin: "If you already know what recursion is,
# just remember the answer. 
# Otherwise, find someone who is standing closer to Douglas Hofstadter than you are; then ask him or her what recursion is."

def fib(n)     
  return "Pls enter a natural number" if n < 0                  
  n < 2 ? n : fib(n-1) + fib(n-2)
end 
 