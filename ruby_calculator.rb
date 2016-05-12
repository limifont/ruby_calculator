# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo
@clear = false

def num
	puts "Enter a number"
	num = gets

	while true

		if num.strip.to_f < 0 || num.strip.to_f > 0
			return num
		elsif num.strip == '0'
			return num
		elsif num.strip.downcase == 'clear'
			@clear = true
			return 0
		elsif num.strip.downcase == 'exit'
			abort('Thanks for using the Ruby Calculator!')
		else
			puts 'Not valid'
			puts 'Enter a valid number'
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
			return op
		elsif op.downcase == 'clear'
			@clear = true
			return 0
		elsif op.downcase == 'exit'
			abort('Thanks for using the Ruby Calculator!')
		else
			puts 'Not valid'
			puts 'Enter a valid operator'
			op = gets.strip	
		end
	end
end



# displays result
def result(first, second, op)
	first.to_f.send(op, second.to_f)
end




def main
	puts "Welcome!"
	puts "This is the Ruby Calculator :)\n"
	puts "Enter what you would like to calculate:"
	num_one = num
	if @clear
		return
	end

	while true
		op = get_operator
		if @clear
			break
		end
	
		num_two = num
		if @clear
			break
		end
		
		num_one = result(num_one, num_two, op)
		puts "\n\n\n***************"
		puts "The result is:"
		puts num_one
		puts "***************\n\n"
	end 
end

while true
	@clear = false
	main
end



