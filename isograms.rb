strings_array = ["Dermatoglyphics", "aba", "moOse"]

def isogram(str)
    if str.downcase.chars.count { |char| str.downcase.count(char) > 1 } >= 1
        return false
    else
        true
    end
end

for i in strings_array
    puts isogram(i)
end

