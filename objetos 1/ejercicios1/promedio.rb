class Student
    def initialize(grade1,grade2,grade3)
        @grade1= grade1
        @grade2 = grade2
        @grade3 = grade3
    end
    def average
        (@grade1 + @grade2 + @grade3) / 3.0
    end
end

puts Student.new(7, 3, 5).average
