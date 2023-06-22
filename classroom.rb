class Classroom
    attr_accessor :lable, :students
    def initialize(label)
        @lable = lable
        @students = []
    end
    def add_student(student)
        student.classroom = self
        @students << student
    end
end