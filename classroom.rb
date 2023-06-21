class Classroom
    attr_accessor :lable, :students
    def initialize(label)
        @lable = lable
        @students = []
    end
    def add_student(student)
        @students << student
        student.classroom = self
    end
end