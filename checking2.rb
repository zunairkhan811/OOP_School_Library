require_relative 'classroom'
require_relative 'student'
require_relative 'person'
require_relative 'book'
require_relative 'rental'
classroom = Classroom.new("Class A")

# Create students
student1 = Student.new("John")
student2 = Student.new("Jane")

# Add students to the classroom
classroom.students << student1
classroom.students << student2

# Set the classroom for students
student1.classroom = classroom
student2.classroom = classroom

# Create books
book1 = Book.new("Book 1", "Author 1")
book2 = Book.new("Book 2", "Author 2")

# Create people
person1 = Person.new("Person 1")
person2 = Person.new("Person 2")

# Create rentals
rental1 = Rental.new("2023-06-21", book1, person1)
rental2 = Rental.new("2023-06-22", book2, person2)

# Associate rentals with people
person1.rentals << rental1
person2.rentals << rental2

# Associate rentals with books
book1.rentals << rental1
book2.rentals << rental2