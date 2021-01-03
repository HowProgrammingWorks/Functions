#top-level
name = "Jane"
puts "Name is: #{name}"
puts "Self is: #{self}"
puts "Self class is: #{self.class}"


#in class
class Author
    # Define class variable
    @@name = "John Doe"
 
    # Getter method
    def self.names
        puts "Self inside class method is: #{self}"
        return @@name
    end
    
end
 
puts "Author class method 'name' is: #{Author.names}"
