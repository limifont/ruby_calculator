# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo


def num
	calculation = []
	puts "Enter a number"
	num = gets

	while true

		if num.strip.to_f < 0 || num.strip.to_f > 0
			puts 'valid'
			calculation << num.strip.to_f
			return num
		elsif num.strip == '0'
			puts 'valid'
			calculation << num.strip.to_f
			return num
		else
			puts 'Not valid'
			puts "Enter a valid number"
			num = gets
		end
	end
end


def get_operator
	operators_arr = ['+', '-', '*', '/']	
	puts "Enter your operator"
	op = gets.strip

	while true
		if operators_arr.include? op
			puts "Valid"
			return op
		else
			puts "Not valid"
			puts "Enter a valid operator"
			op = gets.strip	
		end
	end
end

def last_num
	puts "Enter a number"
	last_num = gets.strip.to_f
end


# displays result
def result (first, second, op)
	first.send(op, second)
end


puts "Welcome!"

while true
	puts "This is the Ruby Calculator :)\n"
	puts "Enter what you would like to calculate:"

	num

	get_operator

	num

		# puts "The result of #{first_num} #{get_operator} #{last_num} is:"
		# puts result(first_num, last_num, get_operator)
end 








# figure out how to do the math on the two numbers
# output the result to the user

# do all the bonuses


