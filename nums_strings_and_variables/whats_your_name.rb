#I dont' think this can be used while there is no output that can lead to the next question/riddle, but anyways...
#Task: write a program that asks for the persons first, middle and last name (one by one), then greet the person using 
#their full name.

puts 'Hello my friend...what\'s your first name?'
first_name = gets.chomp
puts 'Oh, well ' + first_name + '. Do you have a middle name as well?'
middle_name = gets.chomp
puts 'Let me see ' + first_name + ' ' + middle_name + ' ' + 'what about your last name? Please share!'
last_name = gets.chomp
puts 'It is nice to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + '! What a lovely name you have!' 

#things to know:
# - puts
# - gets
# - chomp
# - variables
# + watch out for putting \ before '-s within ''! (like in 'what\'s your name')