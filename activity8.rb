array_of_number = [1, 4, 5, 8, 16]

def is_it_a_perfect_square(number)
    (1..number).each do |i|
        return true if i*i ==  number     
    end
    return false
end

for i in array_of_number
    if is_it_a_perfect_square(i)
        puts "The number #{i} is a perfect square"
    else 
        puts "The number #{i} is not a perfect square"
    end
end


