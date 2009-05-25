# Create a class that act just like Integer, exept its string representation is a hexadecimal string beginning with "0x"
# Just like this: 208 => "0xc8"

# hint: you need to create a class that contains ans instance of Fixnum and delegates method calls to that instance except 
# the ones that it wants to override
# hint: Create a custom delegator class with the 'delegate' library
#       (http://www.ruby-doc.org/stdlib/libdoc/delegate/rdoc/index.html) - the delegate library takes care of redirecting
#       all the methods of Fixnum - it creates a class that responds to all the same method calls as Fixnum

#SimpleDelegator‘s implementation serves as a nice example here.
#
# class SimpleDelegator < Delegator
#   def initialize(obj)
#     super             # pass obj to Delegator constructor, required
#     @_sd_obj = obj    # store obj for future use
#   end
# 
#   def __getobj__
#     @_sd_obj          # return object we are delegating to, required
#   end
# 
#   def __setobj__(obj)
#     @_sd_obj = obj    # change delegation object, a feature we're providing
#   end
# 
#   # ...
# end

# good to know (GTK): you can convert between dcimal nums and string representations of those nums in any base from 2 to 36: just pass
# the base the base into String#to_i or Integer#to_s

# GTK: fix.abs → aFixnum (returns the absolute value of fix)

# GTK: flt.to_s => string 
# Returns a string containing a human-readable representation of obj. If not overridden, uses the "standard" to_s method
# to generate the string. (to_s returns a string containing a representation of self.)

# snippet from ruby cookbook 

require 'delegate'

class HexNum < DelegateClass(Fixnum)
  #the string representations of this class are hexadecimal nums (overriding the Fixnum to_s method)
  def to_s
    sign = self < 0 ? "-" : ""  
    #calls abs on self 
    hex = abs.to_s(16)
    "#{sign}0x#{hex}"
   end
   
   #let's override the inspect method of Fixnum and create our own! 
   def inspect
     to_s
   end     
end  
  
# HexNum.new(10) => 0xa

# GTK: class.new(args, ...) => obj
#      Calls 'allocate' to create a new object of class‘s class, then invokes that object‘s 'initialize' method, 
#      passing it args. This is the method that ends up getting called whenever an object is constructed using .new.


# Nice and easy 8D      
                                                                                                                         
