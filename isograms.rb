strings_array = ["Dermatoglyphics", "aba", "moOse"]

def isogram(str)
    str.downcase.chars.uniq == str.downcase.chars
end

for i in strings_array
    puts isogram(i)
end

