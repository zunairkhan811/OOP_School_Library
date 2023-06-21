require_relative 'person'
class Teacher < Person
  def initialize(specialization)
    super(id, age, name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end

teacher = Teacher.new('Math')
puts teacher.can_use_services
