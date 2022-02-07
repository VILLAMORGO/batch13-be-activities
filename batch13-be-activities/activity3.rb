class Book
    attr_accessor :title, :author, :publication_date

    def display_information
        puts "#{title} is a well-written book by #{author} and published on #{publication_date}."
    end
end

book1 = Book.new()
book1.title = "The Language of Bees"
book1.author = "Laurie R. King"
book1.publication_date = "May 20, 2009"

book2 = Book.new()
book2.title = "Deception Point"
book2.author = "Dan Brown"
book2.publication_date = "2001"

puts book1.display_information

puts book2.display_information