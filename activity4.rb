array1 = [34, 15, 88, 2]
 
array2 = [34, -345, -1, 100]
 
 
def smallest_number array_of_number
    max_value = 1000
 
    array_of_number.each do |i|
        if i < max_value
            max_value = i
        end
    end
 
    max_value
end
 
puts "Smallest integer in first array" 
puts smallest_number(array1)
puts "Smallest integer in second array"
puts smallest_number(array2)