require_relative 'person'
class Student < Person
  def initialize(classroom)
    super(id, age, name, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student = Student.new('Fanta')
puts student.play_hooky
