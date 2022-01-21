# === Check if the number is included
puts " Number 1 "
arr = [1, 3, 5, 7, 9, 11]
number = 3

class Array
    def does_it_have? number
        each do |i|
            return true if i == number
            
        end
        false
    end
end

if arr.does_it_have? number
    puts "The number is included in the array"
else puts "The number is not included"
end

# === Get user input and evaluate
puts "\n\n Number 2"
puts "Choose a number from numbers 1 - 100 and type it in screen"
newNum = gets.strip.to_i

if newNum < 0 
    puts "Incorrect input"
elsif 0 < newNum && newNum <= 50
    puts "Your chosen number is in between 0 and 50"
elsif 51 <= newNum && newNum <= 100
    puts "Your chosen number is in between 51 and 100"
elsif newNum > 100
    puts "Your chosen number is out of range"
end

# === Loop until the condition is met
puts "\n\n Number 3"

userInput = nil

while userInput != "STOP"
    puts "Type Something"
    puts 'Type "STOP" to end the program'
    userInput = gets.strip.upcase
    if userInput == "STOP"
        puts "ENDING PROGRAM..."
    end
end

# === Find numbers divisible by 2
puts "\n\n Number 4"

newArr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
divisor = 2

quotients = newArr.filter do |array|
    array % divisor != 1
end

puts quotients



