class Person
    attr_accessor :age, :name
    attr_reader :id
    def initialize(id,name = "unknown",age,parent_permission:true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end
    private
    def of_age?
        @age >=18
    end
    public
    def can_use_services
        of_age? || @parent_permission
    end
    
end

person = Person.new(1,"Zunair",19)
puts(person.send(:of_age?))
puts(person.can_use_services)