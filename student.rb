require_relative 'person'
class Student < Person
  attr_accessor :classroom

  def initialize(id, age, name, classroom)
    super(id, age, name, parent_permission: true)
    @classroom = classroom
    classroom&.add_student(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
