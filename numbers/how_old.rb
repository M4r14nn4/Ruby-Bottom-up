# Question: if I am X million seconds old, how old am I?
#X years = X * 365 days = 30 * 365 * 24 hours = 30 * 365 * 24 * 60 mins = 30 * 365 * 24 * 60 * 60 seconds 
#Y seconds = Y/60/60/24/365 years

age_in_seconds = 1234567890
age_in_years = age_in_seconds / 60 / 60 / 24 / 365

puts age_in_years