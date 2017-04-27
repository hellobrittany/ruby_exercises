# favorite_foods = []
# 5.times do
# 	puts "Please enter a favorite food."
# 	favorite_foods << gets.chomp
# end

# number = 1
# favorite_foods.each do |food|
# 	puts number.to_s + ". " + food 
# 	number += 1
# end


# puts "---------"


# count = 0
# 11.times do
# 	puts count
# 	count += 1
# end

# puts "Enter a number above 50."

# if gets.chomp.to_i >= 50 
# 	result = true
# elsif gets.chomp.to_i < 50
# 	result = false	
# end

# unless result == false
#  	puts "HELLO!"
# end 


# sams_recipes = 2
# sally_languages = 1

# crepes = false
# french = true

# if sams_recipes >= 10 && sally_languages >= 5
# 	puts "You guys should date!"
# end

# if crepes == true && french == true	
# 	puts "You guys should get married!"
# end	

first_names = []
last_names = []


5.times do
	puts "Enter a first name"

	first_names << gets.chomp

	puts "enter a last name"
	last_names << gets.chomp

end	

info = {
				first_name: first_names, 
				last_name: last_names, 
				email: "first_name + last_name + @gmail.com"
			}

p first_names
p last_names
