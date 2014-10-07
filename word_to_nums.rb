##########################
# RUBY    WORDS TO NUMS  #
##########################
### Hunter T. Chapman  ###
## bootcoder@gmail.com  ##
##########################

# require 'awesome_print'

##########################
# 			PSEUDO CODE
##########################
=begin

***INPUT***

input is a txt file each line contains words delimited with a semicolon

***OUTPUT***
a single line string with numbers corresponding to word input

*** CODE ***
write a program which accepts ARGV[0] with a file name
write a function which parses through ARGV[0]
for each line in ARGV[0] send the line to a function to solve for FizzBuzz

write a function which takes the word array as input
down case all inputs for uniformity
declare a results string and set it as empty
declare and set a word hash where the keys are strings 0-10 and the values are the corresponding integers

iterate over words array checking the word hash as you go
push the correct integer into the results string
print results upon completion. 

=end


##########################
# 			INITIAL CODE
##########################

def words_to_nums
	puts "ERROR: Please give a valid filename as an argument." if ARGV[0] == nil
	File.readlines(ARGV[0]).each do |line|
		line.gsub!("\n", "") if line.include? "\n"
		puts word_converter(line.split(";")) unless line.split[0] == nil
	end
end


def word_converter(word_arr)
	
	# Variables
	word_arr.map!(&:downcase)
	results = ""
	word_hash = { "zero" => 0,
								"one" => 1, 
								"two" => 2, 
								"three" => 3, 
								"four" => 4, 
								"five" => 5, 
								"six" => 6, 
								"seven" => 7, 
								"eight" => 8, 
								"nine" => 9, 
								"ten" => 10 }
	
	# Functional Code
	word_arr.each { |word| results += word_hash[word].to_s }
	results

end

##########################
# 		ACTIONABLE CODE
##########################

# system 'clear'
words_to_nums

##########################
# 			TEST CODE
##########################

# puts word_converter( ["one","two","Three"] ) == "123"
