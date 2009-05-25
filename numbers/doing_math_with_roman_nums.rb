# Challenge: convert between Arabic and Roman nums && do some "roman num math"

# Step 1: define a Roman class that acts like Fixnum - delegate most of Fixnum's method calls
#         to a real Fixnum. (see class_hexnum.rb) 

# GTK: Variables
#         - Ruby has three kinds of variables
#             -- $ global var ( e.g. $foobar)
#                 == a variable whose name begins with '$' has a global scope;
#                    meaning it can be accessed from anywhere within the program during runtime.
#             -- @ instance var
#                 == a variable whose name begins with '@' is an instance variable of self. 
#                 == an instance variable belongs to the object itself
#                 == uninitialized instance variables have a value of nil.
#             -- @@ class variables
#             -- [a-z] or _ local var
#                 == a variable whose name begins with a lowercase letter (a-z) or underscore (_) is a local variable or method invocation
#                 == is only accessible from within the block of its initialization

# what the heck? Class and instance methods!?!. What's the difference? In short: Class methods are methods that are called on a class and 
# instance methods are methods that are called on an instance of a class.

# GTK: Pseudo variables:
#      - self:  execution context of the current method.
#      - nil:   The sole-instance of the NilClass class. Expresses nothing.
#      - true:  The sole-instance of the TrueClass class. Expresses true.
#      - false: The sole-instance of the FalseClass class. Expresses false. 
# =>            (nil also is considered to be false, and every other value is considered to be true in Ruby.)   

# GTK: if you want to create a new array based on the transformation of some other array use Enumerable#collect 
# (also known as Enumerable#map) along with a block that takes one element and transforms it. Both 'collect' and 'map' 
# returns an array of things returned by the block. 
# e.g. my_array.map {|e| e**3}

# snippet from ruby cookbook

class RomNum
  @@roman_to_arabic = [['M', 1000], ['CM', 900], ['D', 500], ['CD', 400], ['C', 100], ['XC', 90], ['L', 50], ['XL', 40],
                       ['X', 10], ['IX', 9], ['V', 5], ['IV', 4], ['I', 1]]
  @@arabic_to_roman = @@roman_to_arabic.collect { |e| e.reverse}.reverse  

end     
#  TODO: finish ! ;) - I came to the conclusion that this a veeeery big bite for a beginner
  
                       