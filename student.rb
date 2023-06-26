require_relative 'person'
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name, _parent_permission)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
