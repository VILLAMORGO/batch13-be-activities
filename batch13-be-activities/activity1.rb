# === ITERATE NUMBERS 1 - 10 ===

count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

count.each { |num| puts num }

# === GET AND ADD VALUE IN HASH ===

h = {a:1, b:2, c:3, d:4}

bVal = h[:b]
puts bVal

h2 = {e:5}

newH = h.merge(h2)

puts newH


# === DATA ARRANGEMENT ===

contact_data = [
    ["john@email.com", "123 Main st.", "555-123-4567"], 
    ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]
]
contacts = { "John Cruz" => {}, "Avion School" => {} }

contacts.keys.each_with_index do |n, index|
    contacts[n] = {
        email: contact_data[index][0], 
        address: contact_data[index][1],
        phone: contact_data[index][2]
    }

p contacts