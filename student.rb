require_relative 'person'
class Student < Person
  attr_reader :classroom

  def initialize(id, age, name, classroom)
    super(id, age, name, parent_permission: true)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    @classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
