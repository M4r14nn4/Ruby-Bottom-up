# Task: Let's write a function that computes factorials!

# Factorial? OK, where is the mathematical definition?

# n! = 1              (if n==0)
# n! = n * (n-1)!     (if n > 0) 
# (where n is a non-negative integer)

def fact(n)
  if n < 0
    'Please enter a non-negative integer!' 
  elsif n == 0
    1
  else
    n * fact(n-1)
  end
end

# Waaaait! What about 'return'? Where did it go? 
# Well, actually you don't need it - a ruby function returns the last thing that was evaluated in it therefore the use of a 'return' statement
# in this case is permissible but unnecessary. 

# Nice and simple - nothing to explain here I guess... Let's try it with using cases! 

#def factorial(n)
#  case
#    when n < 0  : 'Don\'t you know you can\'t take the factorial of a negative num?'
#    when n == 0 : 1
#    when n > 0  : n * fact(n-1)
#  end
#end               

# Try out our freshly baked function! Ops! Seems like nothing has happened! Don't panic, just add the following line of code to get a 
#working program: 

puts fact(ARGV[0].to_i)
# add this to the second version of the function:
#puts factorial(ARGV[0].to_i) 

# Something new here: the ARGV is a special array which which holds each argument passed by the shell as a string (therefore the need to use
# the to_i method in this case). 

# Many Ruby scripts have no GUI - all the do is run, do the job and exit. That's cool until you want them to change their behaviour - here comes 
# the command-line arguments into the picture! 

# On the command-line any text following the name of the script os considered a command line argument. Just like this:
# $ ./factorial.rb 123
# (if you need to pass more arguments just separate them with a space)


# Sooooo... time to try this baby ;) 

# to check out: 
# http://ruby.about.com/od/rubyfeatures/a/argv.htm 

